#import "RNMaterialShowcase.h"

@implementation MutableOrderedDictionary {
@protected
    NSMutableArray *_values;
    NSMutableOrderedSet *_keys;
}

- (instancetype)init {
    if ((self = [super init])) {
        _values = NSMutableArray.new;
        _keys = NSMutableOrderedSet.new;
    }
    return self;
}

- (NSUInteger)count {
    return _keys.count;
}

- (NSEnumerator *)keyEnumerator {
    return _keys.objectEnumerator;
}

- (void)removeObjectForKey:(id)key {
    [_values removeObjectAtIndex:[_keys indexOfObject: key]];
    [_keys removeObject:key];
}

- (id)objectForKey:(id)key {
    NSUInteger index = [_keys indexOfObject:key];
    if (index != NSNotFound){
        return _values[index];
    }
    return nil;
}


- (void)setObject:(id)object forKey:(id)key {
    NSUInteger index = [_keys indexOfObject:key];
    if (index != NSNotFound) {
        _values[index] = object;
    } else {
        [_keys addObject:key];
        [_values addObject:object];
    }
}

@end

@implementation RNMaterialShowcase

@synthesize delegate;

@synthesize bridge = _bridge;

- (id)init {
    self = [super init];
    if (self) {
        targets = [[MutableOrderedDictionary alloc] init];
    }
    
    return self;
}


- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}


RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(ShowSequence:(NSArray *)views props:(NSDictionary *)props)
{
    targets = [[MutableOrderedDictionary alloc] init];
    for (NSNumber *view in views) {
        [targets setObject:[props objectForKey: [view stringValue]] forKey: [view stringValue]];
    }

    NSString *showTargetKey = [ [targets allKeys] objectAtIndex: 0];
    [self ShowFor:[NSNumber numberWithLongLong:[showTargetKey longLongValue]] props:[targets objectForKey:showTargetKey]];
}

- (void)showCaseWillDismissWithShowcase:(MaterialShowcase *)materialShowcase {
    NSLog(@"");
}
- (void)showCaseDidDismissWithShowcase:(MaterialShowcase *)materialShowcase {
    NSLog(@"");
    
    NSString *removeTargetKey = [ [targets allKeys] objectAtIndex: 0];
    
    [targets removeObjectForKey: removeTargetKey];

    NSArray *targetKeys = [targets allKeys];
    NSMutableArray *viewIds = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *props = [[NSMutableDictionary alloc] init];
    
    for (NSString *view in targetKeys) {
        [viewIds addObject: [NSNumber numberWithLongLong:[view longLongValue]]];
        [props setObject:(NSDictionary *)[targets objectForKey:view] forKey:view];
    }
    
    if ([viewIds count] > 0) {
        [self ShowSequence:viewIds props:props];
    }
}

RCT_EXPORT_METHOD(ShowFor:(NSNumber *)view props:(NSDictionary *)props)
{
    MaterialShowcase *materialShowcase = [self generateMaterialShowcase:view props:props];
    
    [materialShowcase showWithAnimated:true completion:^() {}];
}

- (MaterialShowcase *)generateMaterialShowcase:(NSNumber *)view props:(NSDictionary *)props {
    
    MaterialShowcase *materialShowcase = [[MaterialShowcase alloc] init];
    UIView *target = [self.bridge.uiManager viewForReactTag: view];
    
    [materialShowcase setTargetViewWithView: target];
    [materialShowcase setPrimaryText: @"Action 1"];
    [materialShowcase setSecondaryText: @"Click here to go into details"];

    [materialShowcase setDelegate: self];

    return materialShowcase;
}

@end


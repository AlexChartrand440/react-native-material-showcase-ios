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
    
    NSArray *targetKeys = [targets allKeys];
    if (targetKeys.count <= 0) {
        return;
    }
    
    NSString *removeTargetKey = [targetKeys objectAtIndex: 0];
    [targets removeObjectForKey: removeTargetKey];

    NSMutableArray *viewIds = [[NSMutableArray alloc] init];
    NSMutableDictionary *props = [[NSMutableDictionary alloc] init];
    
    for (NSString *view in [targets allKeys]) {
        [viewIds addObject: [NSNumber numberWithLongLong:[view longLongValue]]];
        [props setObject:(NSDictionary *)[targets objectForKey: view] forKey:view];
    }
    
    if ([viewIds count] > 0) {
        [self ShowSequence:viewIds props:props];
    }
}

RCT_EXPORT_METHOD(ShowFor:(nonnull NSNumber *)view props:(NSDictionary *)props)
{
    MaterialShowcase *materialShowcase = [self generateMaterialShowcase:view props:props];
    
    [materialShowcase showWithAnimated:true completion:^() {}];
}

- (MaterialShowcase *)generateMaterialShowcase:(NSNumber *)view props:(NSDictionary *)props {
    
    MaterialShowcase *materialShowcase = [[MaterialShowcase alloc] init];
    UIView *target = [self.bridge.uiManager viewForReactTag: view];

    NSString *primaryText = [props objectForKey: @"primaryText"];
    NSString *secondaryText = [props objectForKey: @"secondaryText"];

    // Background
    UIColor *backgroundPromptColor;
    float backgroundPromptColorAlpha = 0.96;

    // Target
    UIColor *targetTintColor;
    float targetHolderRadius = 44;
    UIColor *targetHolderColor;

    // Text
    UIColor *primaryTextColor;
    UIColor *secondaryTextColor;
    float primaryTextSize = 20;
    float secondaryTextSize = 15;
//    showcase.primaryTextFont = UIFont.boldSystemFont(ofSize: primaryTextSize)
//    showcase.secondaryTextFont = UIFont.systemFont(ofSize: secondaryTextSize)

    // Animation
    float aniComeInDuration = 0.5; // unit: second
    float aniGoOutDuration = 0.5; // unit: second
    float aniRippleScale = 1.5;
    UIColor *aniRippleColor;
    float aniRippleAlpha = 0.2;

    NSString *backgroundPromptColorValue = [props objectForKey:@"backgroundPromptColor"];
    if (backgroundPromptColorValue != nil) {
        backgroundPromptColor = [UIColor fromHexWithHexString: backgroundPromptColorValue];
    }
    
    NSString *targetTintColorValue = [props objectForKey:@"targetTintColor"];
    if (targetTintColorValue != nil) {
        targetTintColor = [UIColor fromHexWithHexString: targetTintColorValue];
    }

    NSString *targetHolderColorValue = [props objectForKey:@"targetHolderColor"];
    if (targetHolderColorValue != nil) {
        targetHolderColor = [UIColor fromHexWithHexString: targetHolderColorValue];
    }

    NSString *primaryTextColorValue = [props objectForKey:@"primaryTextColor"];
    if (primaryTextColorValue != nil) {
        primaryTextColor = [UIColor fromHexWithHexString: primaryTextColorValue];
    }

    NSString *secondaryTextColorValue = [props objectForKey:@"secondaryTextColor"];
    if (secondaryTextColorValue != nil) {
        secondaryTextColor = [UIColor fromHexWithHexString: secondaryTextColorValue];
    }

    
    [materialShowcase setPrimaryText: primaryText];
    [materialShowcase setSecondaryText: secondaryText];

    if (backgroundPromptColor != nil) {
        [materialShowcase setBackgroundColor: backgroundPromptColor];
    } if (targetTintColor != nil) {
        [materialShowcase setTargetTintColor: targetTintColor];
    } if (targetHolderColor != nil) {
        [materialShowcase setTargetHolderColor: targetHolderColor];
    } if (primaryTextColor != nil) {
        [materialShowcase setPrimaryTextColor: primaryTextColor];
    } if (secondaryTextColor != nil) {
        [materialShowcase setSecondaryTextColor: secondaryTextColor];
    }

    
    [materialShowcase setTargetViewWithView: target];
    [materialShowcase setDelegate: self];

    return materialShowcase;
}

@end


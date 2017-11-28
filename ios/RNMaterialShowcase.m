#import "RNMaterialShowcase.h"
#import <MaterialShowcase/MaterialShowcase-Swift.h>

@implementation RNMaterialShowcase

@synthesize bridge = _bridge;

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}


RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(ShowSequence:(NSArray *)views props:(NSDictionary *)props)
{
    MaterialShowcase *materialShowcase = [[MaterialShowcase alloc] init];
    UIView *target = [self.bridge.uiManager viewForReactTag: [NSNumber numberWithInt: 5]];

    [materialShowcase setTargetViewWithView: target];
    [materialShowcase setPrimaryText: @"Action 1"];
    [materialShowcase setSecondaryText: @"Click here to go into details"];

    [materialShowcase showWithAnimated:true completion:^() {
        NSLog(@"");
    }];
}

RCT_EXPORT_METHOD(ShowFor:(NSInteger *)view props:(NSDictionary *)props)
{
    MaterialShowcase *materialShowcase = [[MaterialShowcase alloc] init];
    UIView *target = [self.bridge.uiManager viewForReactTag: [NSNumber numberWithInt: view]];
    
    [materialShowcase setTargetViewWithView: target];
    [materialShowcase setPrimaryText: @"Action 1"];
    [materialShowcase setSecondaryText: @"Click here to go into details"];
    
    [materialShowcase showWithAnimated:true completion:^() {}];
}


@end


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
    UIView *sender = [self.bridge.uiManager viewForReactTag: [NSNumber numberWithInt: 5]];

    
//    [self.bridge.uiManager addUIBlock:^(RCTUIManager *uiManager, RCTSparseArray *viewRegistry) {
//        UIView *view = viewRegistry[reactTag];
//        if (![view isKindOfClass:[RCTXXXView class]]) {
//            RCTLogError(@"Invalid view returned from registry, expecting RCTXXXView, got: %@", view);
//        } else {
//            [view doSomething:str];
//        }
//    }];
    
//    UIView *sender = [self.bridge.uiManager viewForReactTag: [NSNumber numberWithInt: 5]];
//    RCTBridge *bridge = (RCTBridge *) self.bridge;
//    id uiManager = bridge.uiManager;
//
//    UIView *sender = [self.bridge.uiManager viewForReactTag: [NSNumber numberWithInt: 5]];

    NSLog(@"");
}

@end


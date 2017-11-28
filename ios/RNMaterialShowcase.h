
#import "RCTUIManager.h"
#import <MaterialShowcase/MaterialShowcase-Swift.h>

@interface RNMaterialShowcase : NSObject<RCTBridgeModule>

@property (nonatomic, weak) id <MaterialShowcaseDelegate> delegate;

@end


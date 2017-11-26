
#import "RNMaterialShowcase.h"
#import <MaterialShowcase/MaterialShowcase-Swift.h>


@implementation RNMaterialShowcase

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()


RCT_EXPORT_METHOD(ShowSequence:(NSArray *)views props:(NSDictionary *)props)
{
}

@end



#import "RNConnecthings.h"
@import herow_sdk_ios;

@implementation RNConnecthings

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}


RCT_EXPORT_MODULE();


RCT_EXPORT_METHOD(launchClickAndCollect)
{
    [HerowInitializer.instance launchClickAndCollect];
}

RCT_EXPORT_METHOD(stopClickAndCollect)
{
    [HerowInitializer.instance stopClickAndCollect];
}


RCT_EXPORT_METHOD(setCustomId:(NSString *) customId)
{
    if (customId == nil) {
        [ HerowInitializer.instance removeCustomId];
    } else if ([customId isKindOfClass:[NSString class]]) {
        [HerowInitializer.instance setCustomIdWithCustomId:customId];
    }
}

RCT_EXPORT_METHOD(removeCustomId)
{
    [HerowInitializer.instance removeCustomId];
}

RCT_EXPORT_METHOD(acceptOptin)
{
    [HerowInitializer.instance acceptOptin];
}

RCT_EXPORT_METHOD(refuseOptin)
{
   [HerowInitializer.instance refuseOptin];
}
   

@end


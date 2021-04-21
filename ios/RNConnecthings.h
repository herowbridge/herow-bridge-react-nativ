
//#if __has_include("RCTBridgeModule.h")
//#import "RCTBridgeModule.h"
//#else
#import <React/RCTBridgeModule.h>
//#endif
//#if __has_include("RCTEventEmitter.h")
//#import "RCTEventEmitter.h"
//#else
#import <React/RCTEventEmitter.h>
//#endif

@import herow_sdk_ios;

@interface RNConnecthings : RCTEventEmitter <RCTBridgeModule>

@end
  

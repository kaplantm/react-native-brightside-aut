#import "React/RCTBridgeModule.h"


@interface RCT_EXTERN_MODULE (UseHealthKit, NSObject)

RCT_EXTERN_METHOD(startup:(NSDictionary *)config callback:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(checkForMrBrightside: (RCTResponseSenderBlock)callback);
RCT_EXTERN_METHOD(play);
RCT_EXTERN_METHOD(stop);
//RCT_EXTERN_METHOD(cleanup);

RCT_EXTERN_METHOD(debug);


@end

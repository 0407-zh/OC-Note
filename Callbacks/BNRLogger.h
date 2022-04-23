//
//  BNRLogger.h
//  Callbacks
//
//  Created by 陳峻琦 on 23/4/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;

- (void)updateLastTime:(NSTimer *)t;

- (void)zoneChange:(NSNotification *)note;

@end

NS_ASSUME_NONNULL_END

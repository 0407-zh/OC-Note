//
//  BNRLogger.m
//  Callbacks
//
//  Created by 陳峻琦 on 23/4/2022.
//

#import "BNRLogger.h"

@implementation BNRLogger

- (NSString *)lastTimeString {
    static NSDateFormatter *dateFormatter = nil;
    
    if (!dateFormatter) {
        dateFormatter = [NSDateFormatter new];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t {
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

//收到一定字节数据后会被调用
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSLog(@"received %lu bytes", [data length]);
    
    if (!_incomingData) {
        _incomingData = [NSMutableData new];
    }
    
    [_incomingData appendData:data];
}

//最后一部分数据处理完毕后会被调用
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Got it all!");
    
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    
    NSLog(@"string has %lu characters", [string length]);
}

//获取数据失败时会被调用
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

- (void)zoneChange:(NSNotification *)note {
    NSLog(@"the system time zone has changed");
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end

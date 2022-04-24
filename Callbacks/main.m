//
//  main.m
//  Callbacks
//
//  Created by 陳峻琦 on 22/4/2022.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"
#import "BNRObserver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个拥有NSRunLoop对象和NSTimer对象的程序。每隔两秒NSTimer对象会向其目标发送指定的动作消息
        BNRLogger *logger = [BNRLogger new];
        
        [[NSNotificationCenter defaultCenter]
         addObserver:logger
         selector:@selector(zoneChange:)
         name:NSSystemTimeZoneDidChangeNotification
         object:nil
         ];
        
        //MARK: 闭包写法
//        [[NSNotificationCenter defaultCenter]
//         addObserverForName:NSSystemTimeZoneDidChangeNotification
//         object:nil
//         queue:nil
//         usingBlock:^(NSNotification * _Nonnull note) {
//            NSLog(@"the system time zone has changed");
//        }
//        ];
        
        NSURL *url = [NSURL URLWithString:@"https://www.apple.com/environment/pdf/Apple_Environmental_Progress_Report_2022.pdf"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector(updateLastTime:)
                                                        userInfo:nil
                                                         repeats:YES];
        //MARK: KVO
        //创建一个BNRObserver实例用来观察lastTime属性
        __unused BNRObserver *observer = [BNRObserver new];
        
        [logger addObserver:observer
                  forKeyPath:@"lastTime"
                     options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                     context:nil];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

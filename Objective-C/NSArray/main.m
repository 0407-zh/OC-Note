//
//  main.m
//  NSArray
//
//  Created by 陳峻琦 on 17/4/2022.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tommorrow = [NSDate dateWithTimeIntervalSinceNow:24 * 60 * 60];
        NSDate *yestoday = [NSDate dateWithTimeIntervalSinceNow:-24 * 60 * 60];
        //MARK: NSArray
        //创建NSArray对象
        NSArray *dateList = @[now, tommorrow, yestoday];
        
//        NSLog(@"%@", dateList[0]);
//        NSLog(@"%@", dateList[1]);
        
        unsigned long dateCount = [dateList count];
        NSLog(@"%lu", dateCount);
        
        //遍历NSArray
        for (int i = 0; i < dateCount; i++) {
            NSLog(@"%@", dateList[i]);
        }
        
        //MARK: NSMutableArray
        NSMutableArray *nsma = [NSMutableArray array];
        //向NSMutableArray数组中添加元素
        [nsma addObject:now];
        [nsma addObject:tommorrow];
        [nsma addObject:yestoday];
        //移除元素
        [nsma removeObject:now];
        //移除元素指针
        [nsma removeObjectAtIndex:0];
        for (int i = 0; i < [nsma count]; i++) {
            NSLog(@"%@", nsma[i]);
        }
        
        //MARK: 找出包含‘aa'的常见专有名词
        NSString *nameStr = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                  usedEncoding:NSUTF8StringEncoding
                                                         error:NULL];
        //按照‘\n‘分割字符串
        NSArray *names = [nameStr componentsSeparatedByString:@"\n"];
        
        for (NSString *n in names) {
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            if (r.location != NSNotFound) {
                NSLog(@"%@", n);
            }
        }
    }
    return 0;
}

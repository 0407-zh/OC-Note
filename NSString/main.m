//
//  main.m
//  NSString
//
//  Created by 陳峻琦 on 17/4/2022.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"I \u2661 New York";
        NSLog(@"%@\n", str);
        
        NSDate *now = [NSDate now];
        NSString *dateStr = [NSString stringWithFormat:@"the date is %@", now];//创建动态字符串
        NSLog(@"%@", dateStr);
        
        //- (NSUInteger)length; NSString字符串长度
        NSUInteger charCount = [dateStr length];
        NSLog(@"length is %lu", (unsigned long)charCount);
        
        //判断字符串是否相同
        if ([str isEqualToString:dateStr]) {
            NSLog(@"%@ and %@ are equal", str, dateStr);
        } else {
            NSLog(@"%@ ans %@ aren't equal", str, dateStr);
        }
        
        //字符串大写转换
        NSString *uppercaseStr = [str uppercaseString];
        NSLog(@"%@", uppercaseStr);
    }
    return 0;
}

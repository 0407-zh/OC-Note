//
//  main.m
//  Date
//
//  Created by 陳峻琦 on 17/4/2022.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSDate *now = [NSDate date];
        
        NSDate *now = [[NSDate alloc] init]; //alloc分配内存创建对象、init初始化
        
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:1000000];//消息参数1000000
        NSLog(@"In 1000000 seconds it will be %@", later);
        
        NSCalendar *calendar = [NSCalendar currentCalendar];//日历
        //消息的嵌套
        NSLog(@"%lu", (unsigned long)[calendar ordinalityOfUnit:NSCalendarUnitDay
                                                         inUnit:NSCalendarUnitMonth
                                                        forDate:now]);
        
        NSDateComponents *comps = [[NSDateComponents alloc]init];
        [comps setYear:2000];
        [comps setMonth:4];
        [comps setDay:7];
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        NSLog(@"%@", comps);
        NSLog(@"%@", dateOfBirth);
    }
    return 0;
}

//
//  main.m
//  OC Note
//
//  Created by 陳峻琦 on 16/4/2022.
//

//输出计算机名字
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *localizedName = [NSHost currentHost];//创建实例、发送消息
        NSLog(@"%p", localizedName);
        NSLog(@"%@", localizedName);
        NSString *str = (NSString*)localizedName;
        NSLog(@"%@", str);
    }
    return 0;
}

//
//  main.m
//  Categories
//
//  Created by 陳峻琦 on 24/4/2022.
//

#import <Foundation/Foundation.h>
#import "NSString+NSString_BNRVowelCounting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"Hello Objective C!";
        NSLog(@"%@ has %d vowels", str, [str bnr_vowelCount]);
    }
    return 0;
}

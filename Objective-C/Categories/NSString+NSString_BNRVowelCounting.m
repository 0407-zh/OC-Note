//
//  NSString+NSString_BNRVowelCounting.m
//  Categories
//
//  Created by 陳峻琦 on 24/4/2022.
//

#import "NSString+NSString_BNRVowelCounting.h"

@implementation NSString (NSString_BNRVowelCounting)

- (int)bnr_vowelCount {
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    
    NSUInteger count = [self length];
    int sum = 0;
    for (int i = 0; i < count; i++) {
        unichar c = [self characterAtIndex:i];
        if ([charSet characterIsMember:c]) {
            sum++;
        }
    }
    return sum;
}

@end

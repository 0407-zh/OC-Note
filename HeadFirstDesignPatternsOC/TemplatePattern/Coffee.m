//
//  Coffee.m
//  TemplatePattern
//
//  Created by 陳峻琦 on 3/6/2022.
//

#import "Coffee.h"
#include <stdio.h>

@implementation Coffee

- (void)brew {
    NSLog(@"Dripping Coffee through filter");
}

- (void)addCondiments {
    NSLog(@"Adding Sugar and Milk");
}

- (BOOL)customerWantsCondiments {
    NSString *answer = [self getUserInput];
    
    if ([[answer lowercaseString] hasPrefix:@"y"]) {
        return true;
    }
    return false;
}

- (NSString *)getUserInput {
    NSLog(@"Would you like milk and sugar with your coffee (y/n)?");
    
    char answer[2];
    scanf("%s", answer);
    
    NSString *result = [NSString stringWithUTF8String:answer];
    
    return [result isEqualToString:@""] ? result : @"no";
}

@end

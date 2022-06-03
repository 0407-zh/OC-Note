//
//  Tea.m
//  TemplatePattern
//
//  Created by 陳峻琦 on 3/6/2022.
//

#import "Tea.h"

@implementation Tea

- (void)brew {
    NSLog(@"Steeping the tea");
}

- (void)addCondiments {
    NSLog(@"Adding Lemon");
}

- (BOOL)customerWantsCondiments {
    NSString *answer = [self getUserInput];
    
    if ([[answer lowercaseString] hasPrefix:@"y"]) {
        return true;
    }
    return false;
}

- (NSString *)getUserInput {
    NSLog(@"Would you like milk and sugar with your tea (y/n)?");
    
    char answer[2];
    scanf("%s", answer);
    
    NSString *result = [NSString stringWithUTF8String:answer];
    
    return [result isEqualToString:@""] ? result : @"no";
}


@end

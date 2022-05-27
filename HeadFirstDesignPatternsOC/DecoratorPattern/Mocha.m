//
//  Mocha.m
//  DecoratorPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import "Mocha.h"

@implementation Mocha

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, Mocha", self.beverage];
}

- (double)cost {
    return 0.20 + [self.beverage cost];
}

@end

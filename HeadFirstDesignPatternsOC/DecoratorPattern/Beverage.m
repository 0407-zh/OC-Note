//
//  Beverage.m
//  DecoratorPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import "Beverage.h"

@implementation Beverage

- (double)cost {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"You must ovveride %@ in a subclass", NSStringFromSelector(_cmd)] userInfo:nil];
}

@end

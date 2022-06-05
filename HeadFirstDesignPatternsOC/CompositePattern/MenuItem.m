//
//  MenuItem.m
//  CompositePattern
//
//  Created by 陳峻琦 on 5/6/2022.
//

#import "MenuItem.h"

@implementation MenuItem

- (void)print {
    NSMutableString *result = [NSMutableString string];
    [result appendFormat:@"  %@", self.name];
    if (self.isVegetarian) {
        [result appendString:@"(v)"];
    }
    [result appendFormat:@"%.2lf", self.price];
    [result appendFormat:@"\t--%@", self.desc];
    NSLog(@"%@", result);
}

@end

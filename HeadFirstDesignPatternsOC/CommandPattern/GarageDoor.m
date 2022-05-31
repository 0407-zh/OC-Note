//
//  GarageDoor.m
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import "GarageDoor.h"

@interface GarageDoor ()

@property (nonatomic)NSString *location;

@end

@implementation GarageDoor

- (instancetype)initWithLocation:(NSString *)location {
    if (self = [super init]) {
        _location = location;
    }
    return self;
}

- (void)open {
    NSLog(@"%@ Door is Open", _location);
}

- (void)close {
    NSLog(@"%@ Garage Door is close", _location);
}

@end

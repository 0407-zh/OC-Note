//
//  Light.m
//  CommandPattern
//
//  Created by 陳峻琦 on 31/5/2022.
//

#import "Light.h"

@interface Light ()

@property (nonatomic)NSString *location;

@end

@implementation Light

- (instancetype)initWithLocation:(NSString *)location {
    if (self = [super init]) {
        _location = location;
    }
    return self;
}

- (void)on {
    NSLog(@"%@ light is On", _location);
}

- (void)off {
    NSLog(@"%@ light is off", _location);
}

@end

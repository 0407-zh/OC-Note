//
//  TheaterLights.m
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import "TheaterLights.h"

@interface TheaterLights ()

@property (nonatomic, strong) NSString *name;

@end

@implementation TheaterLights

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)on {
    NSLog(@"%@ on", self.name);
}

- (void)off {
    NSLog(@"%@ off", self.name);
}

- (void)dimToLevel:(NSInteger)level {
    NSLog(@"%@ dimming to %ld%%", self.name, level);
}

- (NSString *)description {
    return self.name;
}

@end

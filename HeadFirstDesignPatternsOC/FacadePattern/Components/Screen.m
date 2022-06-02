//
//  Screen.m
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import "Screen.h"

@interface Screen ()

@property (nonatomic, strong) NSString *name;

@end

@implementation Screen

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)up {
    NSLog(@"%@ going up", self.name);
}

- (void)down {
    NSLog(@"%@ going down", self.name);
}

- (NSString *)description {
    return self.name;
}

@end

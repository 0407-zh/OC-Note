//
//  Tuner.m
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import "Tuner.h"

@interface Tuner ()

@property (nonatomic, strong) Amplifier *amplifier;
@property (nonatomic, strong) NSString *name;

@end

@implementation Tuner

- (instancetype)initWithAmplifier:(Amplifier *)amplifier name:(NSString *)name {
    if (self = [super init]) {
        _amplifier = amplifier;
        _name = name;
    }
    return self;
}

- (NSString *)description {
    return self.name;
}

@end

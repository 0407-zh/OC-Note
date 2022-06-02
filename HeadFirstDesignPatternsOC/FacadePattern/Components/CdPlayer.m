//
//  CdPlayer.m
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import "CdPlayer.h"

@interface CdPlayer ()

@property (nonatomic, strong) Amplifier *amplifier;
@property (nonatomic, strong) NSString *name;

@end

@implementation CdPlayer

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

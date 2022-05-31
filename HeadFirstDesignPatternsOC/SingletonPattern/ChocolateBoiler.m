//
//  ChocolateBoiler.m
//  SingletonPattern
//
//  Created by 陳峻琦 on 29/5/2022.
//

#import "ChocolateBoiler.h"

@interface ChocolateBoiler ()

@property (nonatomic, assign, getter = isEmpty)BOOL empty;
@property (nonatomic, assign, getter = isBoiled)BOOL boiled;

@end

@implementation ChocolateBoiler

+ (instancetype)getInstance {
    static ChocolateBoiler *chocolateBoiler;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        chocolateBoiler = [ChocolateBoiler new];
    });
    return chocolateBoiler;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.empty = false;
        self.boiled = false;
    }
    return self;
}

- (void)fill {
    if (self.isEmpty) {
        self.empty = false;
        self.boiled = false;
    }
}

- (void)drain {
    if (!self.isEmpty && self.isBoiled) {
        self.empty = true;
    }
}

- (void)boil {
    if (!self.isEmpty && !self.isBoiled) {
        self.boiled = true;
    }
}

@end

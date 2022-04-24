//
//  BNRAppliance.m
//  init
//
//  Created by 陳峻琦 on 23/4/2022.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

//MARK: 重写构造方法
- (instancetype)init {
    return [self initWithProductName:@"Unknown"];
}

//MARK: 带有实参的构造方法
- (instancetype)initWithProductName:(NSString *)pn {
    //调用NSObject的构造方法
    self = [super init];
    
    if (self) {
//        _productName = [pn copy];
//        _voltage = 120;
        [self setProductName:pn];
        [self setVoltage:120];
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

@end

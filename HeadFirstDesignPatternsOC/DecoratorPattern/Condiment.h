//
//  Condiment.h
//  DecoratorPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import "Beverage.h"

NS_ASSUME_NONNULL_BEGIN

@interface Condiment : Beverage

@property (nonatomic, strong)Beverage *beverage;

- (instancetype)initWithBeverage: (Beverage *)beverage;

@end

NS_ASSUME_NONNULL_END

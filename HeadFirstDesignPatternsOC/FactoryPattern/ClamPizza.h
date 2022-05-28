//
//  ClamPizza.h
//  FactoryPattern
//
//  Created by 陳峻琦 on 28/5/2022.
//

#import "Pizza.h"
#import "Pizza.h"
#import "PizzaIngredientFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface ClamPizza : Pizza

- (instancetype)initWithPizzaIngredientFactory: (id<PizzaIngredientFactory>)ingredientFactory;

@end

NS_ASSUME_NONNULL_END

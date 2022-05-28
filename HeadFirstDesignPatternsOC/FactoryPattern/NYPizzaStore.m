//
//  NYPizzaStore.m
//  FactoryPattern
//
//  Created by 陳峻琦 on 28/5/2022.
//

#import "NYPizzaStore.h"

@implementation NYPizzaStore

- (Pizza *)createPizza:(NSString *)type {
    Pizza *pizza = nil;
    id<PizzaIngredientFactory> ingredientFactory = [NYPizzaIngredientFactory new];
    
    if ([type  isEqual: @"Cheese"]) {
        pizza = [[CheesePizza alloc] initWithPizzaIngredientFactory:ingredientFactory];
        pizza.name = @"New York Style Cheese Pizza";
    } else if ([type isEqual:@"Clam"]) {
        pizza = [[ClamPizza alloc] initWithPizzaIngredientFactory:ingredientFactory];
        pizza.name = @"New York Style Clam Pizza";
    }
    else {
        return nil;
    }
    return pizza;
}

@end

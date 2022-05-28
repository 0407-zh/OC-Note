//
//  CheesePizza.m
//  FactoryPattern
//
//  Created by 陳峻琦 on 28/5/2022.
//

#import "CheesePizza.h"

@interface CheesePizza ()

@property (nonatomic)id<PizzaIngredientFactory> ingredientFactory;

@end

@implementation CheesePizza

- (instancetype)initWithPizzaIngredientFactory:(id<PizzaIngredientFactory>)ingredientFactory {
    if (self = [super init]) {
        self.ingredientFactory = ingredientFactory;
    }
    return self;
}

- (void)prepare {
    NSLog(@"Preparing %@", self.name);
    self.dough = [self.ingredientFactory createDough];
    NSLog(@"Add dough...");
    self.sauce = [self.ingredientFactory createSauce];
    NSLog(@"Add Sauce...");
    self.cheese = [self.ingredientFactory createCheese];
    NSLog(@"Add Cheese...");
    self.clam = [self.ingredientFactory createClam];
    NSLog(@"Add Clam...");
}

@end

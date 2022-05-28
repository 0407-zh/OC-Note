//
//  ClamPizza.m
//  FactoryPattern
//
//  Created by 陳峻琦 on 28/5/2022.
//

#import "ClamPizza.h"

@interface ClamPizza ()

@property (nonatomic)id<PizzaIngredientFactory> ingredientFactory;

@end

@implementation ClamPizza

- (instancetype)initWithPizzaIngredientFactory:(id<PizzaIngredientFactory>)ingredientFactory {
    if (self = [super init]) {
        self.ingredientFactory = ingredientFactory;
    }
    return self;
}

- (void)prepare {
    NSLog(@"Preparing %@", self.name);
    self.dough = [self.ingredientFactory createDough];
    self.sauce = [self.ingredientFactory createSauce];
    self.cheese = [self.ingredientFactory createCheese];
    self.clam = [self.ingredientFactory createClam];
}

@end

//
//  PizzaIngredientFactory.h
//  FactoryPattern
//
//  Created by 陳峻琦 on 28/5/2022.
//

#import <Foundation/Foundation.h>
#import "Ingredients/Dough.h"
#import "Ingredients/Sauce.h"
#import "Ingredients/Cheese.h"
#import "Ingredients/Clams.h"

@protocol PizzaIngredientFactory <NSObject>

- (id<Dough>)createDough;

- (id<Sauce>)createSauce;

- (id<Cheese>)createCheese;

//- (NSMutableArray<id<Veggies>> *)createVeggies;

- (id<Clams>)createClam;

@end

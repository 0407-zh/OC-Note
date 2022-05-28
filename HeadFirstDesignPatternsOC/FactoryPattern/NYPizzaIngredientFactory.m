//
//  NYPizzaIngredientFactory.m
//  FactoryPattern
//
//  Created by 陳峻琦 on 28/5/2022.
//

#import "NYPizzaIngredientFactory.h"
#import "ThinCrustDough.h"
#import "MarinaraSauce.h"
#import "ReggianoCheese.h"
#import "FreshClams.h"

@implementation NYPizzaIngredientFactory

- (id<Dough>)createDough {
    return [ThinCrustDough new];
}

- (id<Sauce>)createSauce {
    return [MarinaraSauce new];
}

- (id<Cheese>)createCheese {
    return [ReggianoCheese new];
}

- (id<Clams>)createClam {
    return [FreshClams new];
}

//- (NSMutableArray<id> *)createVeggies {
//    return nil;
//}


@end

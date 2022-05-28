//
//  PizzaStore.h
//  FactoryPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface PizzaStore : NSObject

- (Pizza *)createPizza: (NSString *)type;

- (Pizza *)orderPizza: (NSString *)type;

@end

NS_ASSUME_NONNULL_END

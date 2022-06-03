//
//  CaffeineBeverage.h
//  TemplatePattern
//
//  Created by 陳峻琦 on 3/6/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CaffeineBeverage : NSObject

- (void)prepareRecipe;

- (void)brew;

- (void)addCondiments;

- (void)boilWater;

- (void)pourInCup;

- (BOOL)customerWantsCondiments;

@end

NS_ASSUME_NONNULL_END

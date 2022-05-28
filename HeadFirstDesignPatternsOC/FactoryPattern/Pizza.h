//
//  Pizza.h
//  FactoryPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import <Foundation/Foundation.h>
#import "Ingredients/Dough.h"
#import "Ingredients/Sauce.h"
#import "Ingredients/Cheese.h"
#import "Ingredients/Clams.h"

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

@property (nonatomic)NSString *name;
@property (nonatomic)id<Dough> dough;
@property (nonatomic)id<Sauce> sauce;
@property (nonatomic)id<Cheese> cheese;
@property (nonatomic)id<Clams> clam;
@property (nonatomic)NSMutableArray<NSString *> *toppings;

- (void)prepare;

- (void)bake;

- (void)cut;

- (void)box;


@end

NS_ASSUME_NONNULL_END

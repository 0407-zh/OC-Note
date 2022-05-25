//
//  Duck.h
//  StrategyPattern
//
//  Created by 陳峻琦 on 25/5/2022.
//

#import <Foundation/Foundation.h>
#import "FlyBehavior.h"
#import "QuackBehavior.h"

NS_ASSUME_NONNULL_BEGIN

@interface Duck : NSObject

@property (nonatomic, strong) id<FlyBehavior> flyBehavior;
@property (nonatomic, strong) id<QuackBehavior> quackBehavior;

- (void)swim;
- (void)display;

- (void)performQuack;
- (void)performFly;

@end

NS_ASSUME_NONNULL_END

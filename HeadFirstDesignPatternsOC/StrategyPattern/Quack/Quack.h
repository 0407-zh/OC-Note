//
//  Quack.h
//  StrategyPattern
//
//  Created by 陳峻琦 on 25/5/2022.
//

#import <Foundation/Foundation.h>
#import "QuackBehavior.h"

NS_ASSUME_NONNULL_BEGIN

@interface Quack : NSObject<QuackBehavior>

- (void)quack;

@end

NS_ASSUME_NONNULL_END

//
//  FlyWithWings.h
//  StrategyPattern
//
//  Created by 陳峻琦 on 25/5/2022.
//

#import <Foundation/Foundation.h>
#import "FlyBehavior.h"

NS_ASSUME_NONNULL_BEGIN

@interface FlyWithWings : NSObject<FlyBehavior>

- (void)fly;

@end

NS_ASSUME_NONNULL_END

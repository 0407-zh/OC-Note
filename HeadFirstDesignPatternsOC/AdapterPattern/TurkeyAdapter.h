//
//  TurkeyAdapter.h
//  AdapterPattern
//
//  Created by 陳峻琦 on 1/6/2022.
//

#import <Foundation/Foundation.h>
#import "Duck.h"
#import "Turkey.h"

NS_ASSUME_NONNULL_BEGIN

@interface TurkeyAdapter : NSObject<Duck>

- (instancetype)initWithTurkeyAdapter: (id<Turkey>)turkey;

@end

NS_ASSUME_NONNULL_END

//
//  BNRAsset.h
//  BMITime
//
//  Created by 陳峻琦 on 19/4/2022.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

NS_ASSUME_NONNULL_BEGIN
@class BNREmployee;

@interface BNRAsset : BNRPerson

@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) BNREmployee *holder;
@property (nonatomic) unsigned int resaleValue;

@end

NS_ASSUME_NONNULL_END

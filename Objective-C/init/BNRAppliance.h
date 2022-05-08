//
//  BNRAppliance.h
//  init
//
//  Created by 陳峻琦 on 23/4/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRAppliance : NSObject

@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;

- (instancetype)initWithProductName:(NSString *)pn;

@end

NS_ASSUME_NONNULL_END

//
//  BNROwnedAppliance.h
//  init
//
//  Created by 陳峻琦 on 24/4/2022.
//

#import "BNRAppliance.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSSet *ownerNames;

- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n;

- (void)addOwnerName:(NSString *)n;

- (void)removeOwnerName:(NSString *)n;

@end

NS_ASSUME_NONNULL_END

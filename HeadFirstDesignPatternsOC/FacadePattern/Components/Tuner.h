//
//  Tuner.h
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import <Foundation/Foundation.h>

@class Amplifier;

NS_ASSUME_NONNULL_BEGIN

@interface Tuner : NSObject

- (instancetype)initWithAmplifier:(Amplifier *)amplifier name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END

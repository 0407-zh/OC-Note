//
//  TheaterLights.h
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TheaterLights : NSObject

- (instancetype)initWithName:(NSString *)name;
- (void)on;
- (void)off;
- (void)dimToLevel:(NSInteger)level;

@end

NS_ASSUME_NONNULL_END

//
//  Projector.h
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import <Foundation/Foundation.h>

@class DvdPlayer;

NS_ASSUME_NONNULL_BEGIN

@interface Projector : NSObject

- (instancetype)initWithDvdPlayer:(DvdPlayer *)dvdPlayer name:(NSString *)name;

- (void)on;
- (void)off;
- (void)wideScreenMode;
- (void)tvMode;

@end

NS_ASSUME_NONNULL_END

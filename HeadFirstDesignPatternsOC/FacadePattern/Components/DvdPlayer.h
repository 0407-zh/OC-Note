//
//  DvdPlayer.h
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import <Foundation/Foundation.h>

@class Amplifier;

NS_ASSUME_NONNULL_BEGIN

@interface DvdPlayer : NSObject

- (instancetype)initWithAmplifier:(Amplifier *)amplifier name:(NSString *)name;

- (void)on;
- (void)off;
- (void)eject;
- (void)playMovie:(NSString *)movie;
- (void)playTrack:(NSInteger)track;
- (void)stop;
- (void)pause;
- (void)setTwoChannelAudio;
- (void)setSurroundAudio;
- (NSString *)description;

@end

NS_ASSUME_NONNULL_END

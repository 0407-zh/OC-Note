//
//  Amplifier.h
//  FacadePattern
//
//  Created by 陳峻琦 on 2/6/2022.
//

#import <Foundation/Foundation.h>

@class Tuner, DvdPlayer, CdPlayer;

NS_ASSUME_NONNULL_BEGIN

@interface Amplifier : NSObject

- (instancetype)initWithName:(NSString *)name;

@property (nonatomic, weak) Tuner *tuner;
@property (nonatomic, weak) DvdPlayer *dvdPlayer;
@property (nonatomic, weak) CdPlayer *cdPlayer;

- (void)on;
- (void)off;
- (void)setStereoSound;
- (void)setSurroundSound;
- (void)setVolume:(NSInteger)level;

@end

NS_ASSUME_NONNULL_END

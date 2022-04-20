//
//  main.m
//  Constants
//
//  Created by 陳峻琦 on 20/4/2022.
//

#import <Foundation/Foundation.h>

#define _MAX(A, B) ((A) > (B)) ? (A) : (B)

//枚举
//enum BlenderSpeed {
//    BlenderSpeedStir = 1,
//    BlenderSpeedChop = 2,
//    BlenderSpeedLiquify = 5,
//    BlenderSpeedPulse = 9,
//    BlenderSpeedIceCrush = 15
//};

typedef NS_ENUM(char, BlenderSpeed) {
    BlenderSpeedStir,
    BlenderSpeedChop,
    BlenderSpeedLiquify,
    BlenderSpeedPulse,
    BlenderSpeedIceCrush
};

@interface Blender : NSObject
{
    enum BlenderSpeed speed;
}

- (void)setSpeed:(enum BlenderSpeed)x;

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", _MAX(10, 12));
        
        //MARK: NSLocale实例可以保存针对不同地理位置的相关信息
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
    }
    return 0;
}

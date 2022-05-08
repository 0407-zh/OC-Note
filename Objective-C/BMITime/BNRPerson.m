//
//  BNRPerson.m
//  YourFirstClass
//
//  Created by 陳峻琦 on 18/4/2022.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

@implementation BNRPerson

//- (float)heightInMeters {
//    return _heightInMeters;
//}
//
//- (void)setHeightInMeters: (float)h {
//    _heightInMeters = h;
//}
//
//- (int)weightInKilos {
//    return _weightInKilos;
//}
//
//- (void)setWeightInKilos: (int)w {
//    _weightInKilos = w;
//}

- (float)bodyMassIndex {
    //return _weightInKilos / (_heightInMeters * _heightInMeters);
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}
- (void)addYourSelfToArray:(NSMutableArray *)theArr {
    [theArr addObject:self];
}


@end




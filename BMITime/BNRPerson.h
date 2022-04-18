//
//  BNRPerson.h
//  YourFirstClass
//
//  Created by 陳峻琦 on 18/4/2022.
//

#ifndef BNRPerson_h
#define BNRPerson_h

@interface BNRPerson : NSObject {
    float _heightInMeters;
    int _weightInKilos;
}
//“-”代表实例方法
- (float)heightInMeters;
- (void)setHeightInMeters: (float)h;
- (int)weightInKilos;
- (void)setWeightInKilos: (int)w;
- (float)bodyMassIndex;
- (void)addYourSelfToArray: (NSMutableArray *)theArr;

@end

#endif /* BNRPerson_h */

//
//  BNREmployee.m
//  BMITime
//
//  Created by 陳峻琦 on 18/4/2022.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee

- (void)setAssets:(NSArray *)a {
    _assets = [a mutableCopy];
}

- (NSArray *)assets {
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a {
    if (!_assets) {
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}

- (unsigned int)valueOfAssets {
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

//重写description方法，使得可以自定NSLog输出方法
- (NSString *)description {
    //return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
    return [NSString stringWithFormat:@"<Employee %u: $%u in asset>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

- (double)yearsOfEmployment {
    if (self.hireDate) {
        NSDate *now = [NSDate now];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    } else {
        return 0;
    }
}

- (float)bodyMassIndex {
    //return 19.0;
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end

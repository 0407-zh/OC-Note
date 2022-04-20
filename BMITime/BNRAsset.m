//
//  BNRAsset.m
//  BMITime
//
//  Created by 陳峻琦 on 19/4/2022.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description {
    //return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];
    }
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end

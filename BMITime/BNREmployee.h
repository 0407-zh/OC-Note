//
//  BNREmployee.h
//  BMITime
//
//  Created by 陳峻琦 on 18/4/2022.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
#import "BNRAsset.h"

NS_ASSUME_NONNULL_BEGIN
@class BNRAsset; //作用：告诉编译器有一个名为BNRAsset的类, 使用 @class不会查看文件全部内容，速度比#import快

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;
@property (nonatomic) NSString *lastName;
@property (nonatomic) BNRPerson *spouse;
@property (nonatomic) NSMutableArray *children;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end

NS_ASSUME_NONNULL_END

//
//  main.m
//  YourFirstClass
//
//  Created by 陳峻琦 on 18/4/2022.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNREmployee *mikey = [[BNREmployee alloc] init]; //创建实例
        
//        [mikey setHeightInMeters: 1.8];
//        [mikey setWeightInKilos: 96];
        mikey.heightInMeters = 1.8;
        mikey.weightInKilos = 96;
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2021"];
        
//        float height = [mikey heightInMeters];
//        int weight = [mikey weightInKilos];
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"%.2f, %d", height, weight);
        NSDate *date = mikey.hireDate;
        NSLog(@"%@ hired on %@", mikey, date);
        
        float BMI = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        NSLog(@"BMI of %.2f, has worked with us for %.2f years", BMI, years);
        
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNREmployee *derek = [[BNREmployee alloc] init];
            
            derek.weightInKilos = 90 + i;
            derek.heightInMeters = 1.8 - i / 10.0;
            derek.employeeID = i;
            
            [employees addObject:derek];
            
            if (i == 0) {
                [executives setObject:derek forKey:@"CEO"];
            } else if (i == 1) {
                [executives setObject:derek forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
            [allAssets addObject:asset];
        }
        //数组排序
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors: @[voa, eid]];
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"allAsset: %@", allAssets);
        NSLog(@"executives: %@", executives);
        NSLog(@"CEO: %@", executives[@"CEO"]);
        NSLog(@"CTO: %@", executives[@"CTO"]);
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        
        NSLog(@"Giving up ownership of arrays");
        executives = nil;
        toBeReclaimed = nil;
        employees = nil;
        allAssets = nil;
    }
    sleep(100);
    return 0;
}

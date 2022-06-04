//
//  main.m
//  IteratorPattern
//
//  Created by 陳峻琦 on 4/6/2022.
//

#import <Foundation/Foundation.h>
#import "DinerMenu.h"
#import "PancakeHouseMenu.h"
#import "CafeMenu.h"
#import "Waitress.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PancakeHouseMenu *pancakeHouseMenu = [PancakeHouseMenu new];
        DinerMenu *dinerMenu = [DinerMenu new];
        CafeMenu *cafeMenu = [CafeMenu new];
        
        Waitress *waitress = [Waitress new];
        waitress.pancakeHouseMenu = pancakeHouseMenu;
        waitress.dinerMenu = dinerMenu;
        waitress.cafeMenu = cafeMenu;
        
        [waitress printMenu];
    }
    return 0;
}


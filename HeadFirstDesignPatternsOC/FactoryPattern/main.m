//
//  main.m
//  FactoryPattern
//
//  Created by 陳峻琦 on 27/5/2022.
//

#import <Foundation/Foundation.h>
#import "NYPizzaStore.h"
#import "ChiPizzaStore.h"
#import "Pizza.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PizzaStore *nyPizzaStore = [NYPizzaStore new];
        //PizzaStore *chiPizzaStore = [ChiPizzaStore new];
        
        Pizza *nyPizza = [nyPizzaStore orderPizza:@"Cheese"];
        NSLog(@"Ethan ordered a %@", nyPizza.name);
        
//        Pizza *chiPizza = [chiPizzaStore orderPizza:@"Cheese"];
//        NSLog(@"Ethan ordered a %@", chiPizza.name);
        
        NSLog(@"");
    }
    return 0;
}

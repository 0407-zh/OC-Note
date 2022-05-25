//
//  main.m
//  HeadFirstDesignPatternsOC
//
//  Created by 陳峻琦 on 25/5/2022.
//

#import <Foundation/Foundation.h>
#import "MallardDuck.h"
#import "ModelDuck.h"
#import "FlyRocketPowered.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Duck *mallard = [MallardDuck new];
        [mallard performFly];
        [mallard performQuack];
        
        Duck *model = [ModelDuck new];
        [model performFly];
        model.flyBehavior = [FlyRocketPowered new];
        [model performFly];
    }
    return 0;
}

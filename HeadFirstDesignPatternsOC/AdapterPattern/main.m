//
//  main.m
//  AdapterPattern
//
//  Created by 陳峻琦 on 1/6/2022.
//

#import <Foundation/Foundation.h>
#import "MallardDuck.h"
#import "TurkeyAdapter.h"
#import "WildTurkey.h"
#import "Duck.h"
#import "Turkey.h"

static void testDuck(id<Duck> duck);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MallardDuck *duck = [MallardDuck new];
        
        WildTurkey *turkey = [WildTurkey new];
        id<Duck> turkeyAdapter = [[TurkeyAdapter alloc] initWithTurkeyAdapter:turkey];
        
        NSLog(@"The Turkey says...");
        [turkey gobble];
        [turkey fly];
        
        NSLog(@"The Duck says...");
        testDuck(duck);
        
        NSLog(@"TurkeyAdapter says...");
        testDuck(turkeyAdapter);
    }
    return 0;
}

static void testDuck(id<Duck> duck) {
    [duck quack];
    [duck fly];
}

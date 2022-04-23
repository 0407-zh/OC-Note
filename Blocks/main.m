//
//  main.m
//  Blocks
//
//  Created by 陳峻琦 on 23/4/2022.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *originalString = @[@"Sauerkaut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        NSLog(@"original strings: %@", originalString);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        NSArray * vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        //MARK: 声明Block变量
        //void (^devowelizer)(id, NSUInteger, BOOL *);
        ArrayEnumerationBlock devowelizer;
        
        //MARK: 将Block对象赋给变量
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            if (yRange.location != NSNotFound) {
                *stop = YES;
                return;
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            [devowelizedStrings addObject:newString];
        };
        
        //MARK: 传递Block对象
        [originalString enumerateObjectsUsingBlock:devowelizer];
        
        //MARK: 匿名闭包写法
//        [originalString enumerateObjectsUsingBlock:^(id  _Nonnull string, NSUInteger i, BOOL * _Nonnull stop) {
//            NSRange yRange = [string rangeOfString:@"y"
//                                           options:NSCaseInsensitiveSearch];
//            if (yRange.location != NSNotFound) {
//                *stop = YES;
//                return;
//            }
//
//            NSMutableString *newString = [NSMutableString stringWithString:string];
//
//            for (NSString *s in vowels) {
//                NSRange fullRange = NSMakeRange(0, [newString length]);
//                [newString replaceOccurrencesOfString:s
//                                           withString:@""
//                                              options:NSCaseInsensitiveSearch
//                                                range:fullRange];
//            }
//            [devowelizedStrings addObject:newString];
//        }];
        NSLog(@"new strings: %@", devowelizedStrings);
        
        //带有返回值的Block
        double (^divBlock)(double, double);
        
        divBlock = ^(double dividend, double divisor) {
            double quotient = dividend / divisor;
            return quotient;
        };
        
        NSLog(@"quotient is %f", divBlock(42.0, 12.5));
    }
    return 0;
}

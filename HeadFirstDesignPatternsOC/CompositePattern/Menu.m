//
//  Menu.m
//  CompositePattern
//
//  Created by 陳峻琦 on 5/6/2022.
//

#import "Menu.h"

@interface Menu ()

@property (nonatomic, strong) NSMutableArray *menuComponents;

@end

@implementation Menu

- (instancetype)init {
    if (self = [super init]) {
        _menuComponents = [NSMutableArray array];
    }
    return self;
}

- (void)addMenuComponent:(MenuComponent *)menuComponent {
    [self.menuComponents addObject:menuComponent];
}

- (void)removeMenuComponent:(MenuComponent *)menuComponent {
    [self.menuComponents removeObject:menuComponent];
}

- (MenuComponent *)getChildAtIndex:(NSInteger)index {
    return [self.menuComponents objectAtIndex:index];
}

- (void)print {
    NSMutableString *result = [NSMutableString string];
    [result appendFormat:@"\n%@", self.name];
    [result appendFormat:@", %@\n", self.desc];
    [result appendString:@"---------------------"];
    NSLog(@"%@", result);
    
    for (MenuComponent *menuComponent in self.menuComponents) {
        [menuComponent print];
    }
}

@end

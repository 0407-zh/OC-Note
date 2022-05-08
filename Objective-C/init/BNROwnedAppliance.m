//
//  BNROwnedAppliance.m
//  init
//
//  Created by 陳峻琦 on 24/4/2022.
//

#import "BNROwnedAppliance.h"

//类扩展
@interface BNROwnedAppliance ()
{
    NSMutableSet *_ownerNames;
}

@end

@implementation BNROwnedAppliance

//覆盖父类构造方法，防止子类实例初始化不完整
- (instancetype)initWithProductName:(NSString *)pn {
    return [self initWithProductName:pn firstOwnerName:nil];
}

- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n {
    if (self = [super initWithProductName:pn]) {
        _ownerNames = [NSMutableSet new];
        
        if (n) {
            [_ownerNames addObject:n];
        }
    }
    return self;
}

- (void)addOwnerName:(NSString *)n {
    [_ownerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n {
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames {
    return [_ownerNames copy];
}

@end

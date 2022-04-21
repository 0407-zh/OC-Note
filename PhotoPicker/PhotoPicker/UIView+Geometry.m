//
//  UIView+Geometry.m
//  PhotoPicker
//
//  Created by 陳峻琦 on 21/4/2022.
//

#import "UIView+Geometry.h"

@implementation UIView (Geometry)

- (CGFloat)width {
    return self.frame.size.width;
}

- (CGFloat)height {
    return self.frame.size.width;
}

- (CGFloat)maxY {
    return CGRectGetMaxY(self.frame);
}

@end

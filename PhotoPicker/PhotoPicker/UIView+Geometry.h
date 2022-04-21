//
//  UIView+Geometry.h
//  PhotoPicker
//
//  Created by 陳峻琦 on 21/4/2022.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface UIView (Geometry) //括号中为扩展名，Category相当于Swift中的Extension

@property (nonatomic, readonly) CGFloat width;
@property (nonatomic, readonly) CGFloat height;

- (CGFloat)maxY;

@end

//
//  PhotoPicker.h
//  PhotoPicker
//
//  Created by 陳峻琦 on 21/4/2022.
//

#import <UIKit/UIKit.h>

@class PhotoPicker;

@protocol PhotoPickerDelegate <NSObject>

- (void)photoPicker:(PhotoPicker *)picker didGetImage:(UIImage *)image;

@end

@interface PhotoPicker : UIViewController

@property (nonatomic, weak) id<PhotoPickerDelegate> delegate;

@end

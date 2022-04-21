//
//  ViewController.h
//  PhotoPicker
//
//  Created by 陳峻琦 on 21/4/2022.
//

#import <UIKit/UIKit.h>
#import "PhotoPicker.h"

@interface ViewController : UIViewController 

- (void)clickPhotoButton:(UIButton *)button;

- (void)photoPicker:(PhotoPicker *)picker didGetImage:(UIImage *)image;

@end


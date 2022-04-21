//
//  PhotoPickerCell.h
//  PhotoPicker
//
//  Created by 陳峻琦 on 21/4/2022.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIkit.h>
#import <Photos/Photos.h>

NS_ASSUME_NONNULL_BEGIN

@interface PhotoPickerCell : UICollectionViewCell

- (void)setPhoto:(PHAsset *)photo imageManager:(PHImageManager *)imageManager;

@end

NS_ASSUME_NONNULL_END

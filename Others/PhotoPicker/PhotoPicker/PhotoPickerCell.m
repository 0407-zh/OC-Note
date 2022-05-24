//
//  PhotoPickerCell.m
//  PhotoPicker
//
//  Created by 陳峻琦 on 21/4/2022.
//

#import "PhotoPickerCell.h"

@implementation PhotoPickerCell 
{
    NSString *photoId;
    UIImageView *imageView;
}

//重写构造方法，OC常用写法
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        photoId = @"";
        
        imageView = [UIImageView new];
        imageView.translatesAutoresizingMaskIntoConstraints = NO;
        imageView.clipsToBounds = YES;
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        [self.contentView addSubview:imageView];
        
        [NSLayoutConstraint activateConstraints:@[
            [imageView.topAnchor constraintEqualToAnchor:self.contentView.topAnchor],
            [imageView.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor],
            [imageView.leftAnchor constraintEqualToAnchor:self.contentView.leftAnchor],
            [imageView.rightAnchor constraintEqualToAnchor:self.contentView.rightAnchor]
        ]];
    }
    return self;
}

- (void)setPhoto:(PHAsset *)photo imageManager:(PHImageManager *)imageManager {
    photoId = photo.localIdentifier;
    
    PHImageRequestOptions *options = [PHImageRequestOptions new];
    options.synchronous = NO;
    options.deliveryMode = PHImageRequestOptionsDeliveryModeOpportunistic;
    options.resizeMode = PHImageRequestOptionsResizeModeFast;
    
    __weak typeof(self) weakSelf = self;
    
    [imageManager requestImageForAsset:photo
                            targetSize:self.contentView.bounds.size
                           contentMode:PHImageContentModeAspectFill
                               options:options
                         resultHandler:
     ^(UIImage * _Nullable image, NSDictionary * _Nullable info) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }
        
        strongSelf->imageView.image = image;
    }];
}

@end

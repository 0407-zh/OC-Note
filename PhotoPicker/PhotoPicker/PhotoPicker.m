//
//  PhotoPicker.m
//  PhotoPicker
//
//  Created by 陳峻琦 on 21/4/2022.
//

#import "PhotoPicker.h"
#import "UIView+Geometry.h"
#import "PhotoPickerCell.h"
#import <Photos/Photos.h>

@interface PhotoPicker () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) NSArray<PHAsset *> *photos; //要显示的照片数组
@property (nonatomic, strong) PHImageManager *imageManger;

@property (nonatomic, strong) UICollectionView *collectionView; //@property生成的属性默认具有计算属性，有getter、setter属性存储默认值

@end

@implementation PhotoPicker

- (UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.minimumInteritemSpacing = 2;
        layout.minimumLineSpacing = 2;
        
        CGFloat itemWidth = floor((self.view.width - 2 * 2) / 3);
        layout.itemSize = CGSizeMake(itemWidth, itemWidth);
        
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.translatesAutoresizingMaskIntoConstraints = NO;
        [_collectionView registerClass:PhotoPickerCell.class
            forCellWithReuseIdentifier:PhotoPickerCell.description];
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
    }
    return _collectionView;
}

- (PHImageManager *)imageManger {
    if (!_imageManger) {
        _imageManger = [[PHImageManager alloc] init];
    }
    return  _imageManger;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.collectionView];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.collectionView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
        [self.collectionView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
        [self.collectionView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor],
        [self.collectionView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor]
    ]];
    
    [PHPhotoLibrary requestAuthorizationForAccessLevel:PHAccessLevelReadWrite handler:^(PHAuthorizationStatus status) {
        //Block
        dispatch_async(dispatch_get_main_queue(), ^{ //获取主队列
            switch (status) {
                case PHAuthorizationStatusAuthorized:
                case PHAuthorizationStatusLimited:
                    [self loadPhotos];
                    break;
                    
                default:
                    [self dismissViewControllerAnimated:YES completion:nil];
            }
        });
    }];
}

//加载照片
- (void)loadPhotos {
    __weak typeof(self) weakSelf = self;//弱引用，防止循环引用
    
    //在子线程异步加载照片
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{//并发队列
        NSMutableArray<PHAsset *> *list = [[NSMutableArray alloc] init];
        PHFetchResult *result = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeImage options:nil];
        
        for (int i = 0; i < result.count; i++) {
            [list addObject:result[i]];
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            __strong typeof(weakSelf) strongSelf = weakSelf;
            if (!strongSelf) {
                return;
            }
            
            strongSelf.photos = list;
            [strongSelf.collectionView reloadData];
        });
    });
}

//MARK: - Collection view date source
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photos.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoPickerCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:PhotoPickerCell.description forIndexPath:indexPath];
    [cell setPhoto:self.photos[indexPath.item] imageManager:self.imageManger];
    return cell;
}

//MARK: - Collection view delegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    PHImageRequestOptions *options = [PHImageRequestOptions new];//等价alloc init
    options.synchronous = true;
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.resizeMode = PHImageRequestOptionsResizeModeExact;
    
    __weak typeof(self) weakSelf = self;
    
    [self.imageManger requestImageForAsset:self.photos[indexPath.item]
                                targetSize:UIScreen.mainScreen.bounds.size
                               contentMode:PHImageContentModeAspectFill
                                   options:options
                             resultHandler:
     ^(UIImage * _Nullable image, NSDictionary * _Nullable info) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }
        [strongSelf.delegate photoPicker:strongSelf didGetImage:image];
        [strongSelf dismissViewControllerAnimated:YES completion:nil];
    }];
}

@end

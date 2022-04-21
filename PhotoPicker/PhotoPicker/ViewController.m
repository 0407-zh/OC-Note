//
//  ViewController.m
//  PhotoPicker
//
//  Created by 陳峻琦 on 21/4/2022.
//

#import "ViewController.h"
#import "PhotoPicker.h"
#import "UIView+Geometry.h"

@interface ViewController () <PhotoPickerDelegate>
{
    UIImageView *imageView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect imageFrame = CGRectMake(10, 100, self.view.width - 20, self.view.height - 200);
    imageView = [[UIImageView alloc] initWithFrame:imageFrame]; //创建一个UIImageView
    imageView.backgroundColor = UIColor.lightGrayColor; //设置背景色
    imageView.clipsToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imageView];
    
    CGRect buttonFrame = CGRectMake(10, imageView.maxY + 10, imageView.width, 30);
    UIButton *button = [[UIButton alloc] initWithFrame:buttonFrame];
    [button setBackgroundColor:UIColor.blueColor]; //设置背景色的另一个写法
    [button setTitleColor:UIColor.whiteColor forState:UIControlStateNormal]; //设置标题颜色
    [button setTitle:@"Photo" forState:UIControlStateNormal]; //设置按钮标题
    [button addTarget:self action:@selector(clickPhotoButton:) forControlEvents:UIControlEventTouchUpInside];//为button添加可执行事件
    [self.view addSubview:button];
}

-(void)clickPhotoButton:(UIButton *)button {
    NSLog(@"Click photo button");
    
    PhotoPicker *picker = [[PhotoPicker alloc] init];
    picker.delegate = self;
    [self presentViewController:(PhotoPicker *)picker animated:YES completion:nil];
}

- (void)photoPicker:(PhotoPicker *)picker didGetImage:(UIImage *)image{
    imageView.image = image;
}

@end

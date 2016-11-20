//
//  YHButton.m
//  YHButton
//
//  Created by 杨应海 on 2016/11/17.
//  Copyright © 2016年 YYH. All rights reserved.
//

#import "YHButton.h"
#import "UIView+Common.h"


@interface YHButton ()


@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation YHButton


- (void)setIsSelect:(BOOL)isSelect {
    _isSelect = isSelect;
    
    if (isSelect) {
        _imageView.image = [UIImage imageNamed:@"navigationbar_arrow_down"];
    } else {
        _imageView.image = [UIImage imageNamed:@"navigationbar_arrow_up"];
    }

}

- (void)setTitle:(NSString *)title {
    _title = title;
    
    _nameLabel.text = title;
    [_nameLabel sizeToFit];
    
    
}

- (void)gesture:(id)sender {
    
 
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}


+ (instancetype)yhButton {
    
    UINib *nib = [UINib nibWithNibName:@"YHButton" bundle:nil];
  
   YHButton * view =   [nib instantiateWithOwner:nil options:nil].lastObject;
//    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gesture:)];
//    [view addGestureRecognizer:tap];
    return view;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gesture:)];
    [self addGestureRecognizer:tap];
    
}





//- (instancetype)initWithFrame:(CGRect)frame {
//    self = [super initWithFrame:frame];
//    if (self) {
//        
//        [self setupUI];
//    }
//    return self;
//}



//#pragma mark - 设置界面
//- (void)setupUI {
//    
//    UIView *middleView = [[UIView alloc] init];
//    [self addSubview:middleView];
//    middleView.backgroundColor = [UIColor redColor];
//    
//    
//    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
//    nameLabel.text = @"测试";
//    [nameLabel sizeToFit];
//    [middleView addSubview:nameLabel];
//    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(nameLabel.right + 3, nameLabel.center.y - 7 / 2, 13, 7)];
//    imageView.image = [UIImage imageNamed:@"navigationbar_arrow_up"];
//    [middleView addSubview:imageView];
//    
//    [middleView sizeToFit];
//    middleView.center = self.center;
//
//    _nameLabel = nameLabel;
//    _imageView = imageView;
//    
//    
//    
//    
//    
//}




@end

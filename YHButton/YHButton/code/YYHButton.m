//
//  YYHButton.m
//  YHButton
//
//  Created by 杨应海 on 2016/11/20.
//  Copyright © 2016年 YYH. All rights reserved.
//

#import "YYHButton.h"


@interface YYHButton ()

@property (nonatomic, weak) UILabel *titleLabel;
@property (nonatomic, weak) UIImageView *imageView;

@property (nonatomic, weak) UIView *view;

@end

@implementation YYHButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}



#pragma mark - 重写接口设置


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
    
    _titleLabel.text = title;
    [_titleLabel sizeToFit];
    

}


#pragma mark - tapGestureClick
- (void)tapGestureClick {
    
    [self sendActionsForControlEvents:UIControlEventValueChanged];
    
}


#pragma mark - 设置界面
- (void)setupUI {
    // 1. 添加一个View 作为能够总是自动调整到按钮中心的控件
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];;
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:view
                         attribute:NSLayoutAttributeCenterX
                         relatedBy:NSLayoutRelationEqual
                         toItem:self
                         attribute:NSLayoutAttributeCenterX
                         multiplier:1.0                                                         constant:0]];
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:view
                         attribute:NSLayoutAttributeCenterY
                         relatedBy:NSLayoutRelationEqual
                         toItem:self
                         attribute:NSLayoutAttributeCenterY
                         multiplier:1.0
                         constant:0]];

    // 给view添加左右约束防止 超出外界设置的按钮的宽度
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:view
                         attribute:NSLayoutAttributeLeft
                         relatedBy:NSLayoutRelationGreaterThanOrEqual
                         toItem:self
                         attribute:NSLayoutAttributeLeft
                         multiplier:1.0
                         constant:5]];
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:view
                         attribute:NSLayoutAttributeRight
                         relatedBy:NSLayoutRelationLessThanOrEqual
                         toItem:self
                         attribute:NSLayoutAttributeRight
                         multiplier:1.0
                         constant:-5]];
    
    // 2. 添加Label --> 作为自定义按钮的title
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = @"测试";
    [titleLabel sizeToFit];
    [view addSubview:titleLabel];
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraint:[NSLayoutConstraint
                        constraintWithItem:titleLabel
                         attribute:NSLayoutAttributeLeft
                        relatedBy:NSLayoutRelationEqual
                        toItem:view
                        attribute:NSLayoutAttributeLeft
                        multiplier:1.0
                         constant:5]];
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:titleLabel
                         attribute:NSLayoutAttributeTop
                         relatedBy:NSLayoutRelationEqual
                         toItem:view
                         attribute:NSLayoutAttributeTop
                         multiplier:1.0
                         constant:3]];
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:titleLabel
                         attribute:NSLayoutAttributeBottom
                         relatedBy:NSLayoutRelationEqual
                         toItem:view
                         attribute:NSLayoutAttributeBottom
                         multiplier:1.0
                         constant:-3]];
    
    // 3. 添加ImageView 作为按钮右边显示的箭头
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"navigationbar_arrow_up"]];
    [imageView sizeToFit];
    [view addSubview:imageView];
    
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:imageView
                         attribute:NSLayoutAttributeLeft
                         relatedBy:NSLayoutRelationEqual
                         toItem:titleLabel
                         attribute:NSLayoutAttributeRight
                         multiplier:1.0
                         constant:5]];
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:imageView
                         attribute:NSLayoutAttributeCenterY
                         relatedBy:NSLayoutRelationEqual
                         toItem:titleLabel
                         attribute:NSLayoutAttributeCenterY
                         multiplier:1.0
                         constant:0]];
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:imageView
                         attribute:NSLayoutAttributeRight
                         relatedBy:NSLayoutRelationEqual
                         toItem:view
                         attribute:NSLayoutAttributeRight
                         multiplier:1.0
                         constant:-5]];


    // 给titleLabel 添加一个宽度约束,防止字体过多,把图片箭头挤没了
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:titleLabel
                         attribute:NSLayoutAttributeWidth
                         relatedBy:NSLayoutRelationLessThanOrEqual
                         toItem:nil
                         attribute:0
                         multiplier:1.0
                         constant:self.bounds.size.width - 10 - 15 - imageView.bounds.size.width]];
    
    // 4. 添加手势
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureClick)];
    [self addGestureRecognizer:tapGesture];
    
    
    _titleLabel = titleLabel;
    _imageView = imageView;
    _view = view;
}



@end

//
//  YHButton.h
//  YHButton
//
//  Created by 杨应海 on 2016/11/17.
//  Copyright © 2016年 YYH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YHButton : UIControl

@property (nonatomic, assign) BOOL isSelect;

@property (nonatomic, copy) NSString *title;



//- (instancetype)initWithFrame:(CGRect)frame;


+ (instancetype)yhButton;

@end

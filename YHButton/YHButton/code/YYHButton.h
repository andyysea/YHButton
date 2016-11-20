//
//  YYHButton.h
//  YHButton
//
//  Created by 杨应海 on 2016/11/20.
//  Copyright © 2016年 YYH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YYHButton : UIControl

@property (nonatomic, assign) BOOL isSelect;

@property (nonatomic, copy) NSString *title;




/** 接口 设置大小的时候,要设置宽度 > 里面的内容宽度, 
                     系统默认的30 高度最好介于 30 ~ 44 
 */
- (instancetype)initWithFrame:(CGRect)frame;



@end

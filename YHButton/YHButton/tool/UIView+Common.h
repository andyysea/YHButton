//
//  UIView+Common.h
//  YHButton
//
//  Created by 杨应海 on 2016/11/20.
//  Copyright © 2016年 YYH. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  UIView 通用Category
 */
@interface UIView (Common)

/**
 *  获取左上角横坐标
 *
 *  @return 坐标值
 */
- (CGFloat)left;

/**
 *  获取左上角纵坐标
 *
 *  @return 坐标值
 */
- (CGFloat)top;

/**
 *  获取视图右下角横坐标
 *
 *  @return 坐标值
 */
- (CGFloat)right;

/**
 *  获取视图右下角纵坐标
 *
 *  @return 坐标值
 */
- (CGFloat)bottom;

/**
 *  获取视图宽度
 *
 *  @return 宽度值（像素）
 */
- (CGFloat)width;

/**
 *  获取视图高度
 *
 *  @return 高度值（像素）
 */
- (CGFloat)height;

/**
 *	@brief	删除所有子对象
 */
- (void)removeAllSubviews;

@end

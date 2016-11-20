//
//  ViewController.m
//  YHButton
//
//  Created by 杨应海 on 2016/11/17.
//  Copyright © 2016年 YYH. All rights reserved.
//

#import "ViewController.h"
#import "YHButton.h"


@interface ViewController ()

@property (nonatomic, assign) BOOL isChange;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    
//    YHButton *button = [[YHButton alloc] initWithFrame:CGRectMake(20, 100, self.view.bounds.size.width - 40, 44)];

    YHButton *button = [YHButton yhButton];
    button.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventValueChanged];
    
    self.isChange = YES;
}

- (void)buttonClick:(YHButton *)button {
    
    NSLog(@"-------------------------------------------------");
    
    if (self.isChange) {
        button.isSelect = YES;
        button.title = @"我是自定义按钮哦-哈哈";
        self.isChange = NO;
    } else {
        button.isSelect = NO;
        button.title = @"哈哈";
        self.isChange = YES;
    }
    
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

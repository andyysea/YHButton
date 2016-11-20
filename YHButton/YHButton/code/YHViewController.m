//
//  YHViewController.m
//  YHButton
//
//  Created by 杨应海 on 2016/11/20.
//  Copyright © 2016年 YYH. All rights reserved.
//

#import "YHViewController.h"
#import "YYHButton.h"


@interface YHViewController ()

@property (nonatomic, assign) BOOL isChange;

@end

@implementation YHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    YYHButton *button = [[YYHButton alloc] initWithFrame:CGRectMake(0, 0, 300, 40)];
    button.backgroundColor = [UIColor lightGrayColor];
    
    button.center = self.view.center;
    
    
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventValueChanged];
    
    self.isChange = YES;
    
}



- (void)buttonClick:(YYHButton *)button {
    
    NSLog(@"==============");
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

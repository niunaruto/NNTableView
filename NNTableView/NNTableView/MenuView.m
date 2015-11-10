//
//  MenuView.m
//  测试
//
//  Created by public on 15/11/10.
//  Copyright © 2015年 public. All rights reserved.
//

#import "MenuView.h"
#import "MenuTableView.h"
#define SCREEN [UIScreen mainScreen].bounds.size

@interface MenuView()
@property (nonatomic, strong) MenuTableView *tableView;

@end
@implementation MenuView
- (MenuTableView *)tableView{

    if (!_tableView) {
        _tableView = [[MenuTableView alloc]init];
    }
    return _tableView;

}
- (instancetype)init{
    self = [super initWithFrame:CGRectMake(0, 0, SCREEN.width, SCREEN.height)];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithRed:189/225 green:200/225 blue:23/225 alpha:0.2];
        
        
        
        [self addSubview:self.tableView];
        [self otherView];
    }
    return self;
}
- (void)otherView{
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(40, self.frame.size.height - 80 - 40, (SCREEN.width- 40 - 40)/2 , 40)];
    btn1.backgroundColor = [UIColor redColor];
    [btn1 setTitle:@"取消" forState:UIControlStateNormal];
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(40+btn1.frame.size.width, self.frame.size.height - 80 - 40, (SCREEN.width- 40 - 40)/2 , 40)];
    btn2.backgroundColor = [UIColor orangeColor];
    [btn2 setTitle:@"确定" forState:UIControlStateNormal];
    [self addSubview:btn1];
    [self addSubview:btn2];
    btn1.tag = 10;
    btn2.tag = 20;
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];

}
- (void)btnClick:(UIButton *)btn{
    
    [self removeFromSuperview];
    switch (btn.tag) {
        case 10:
        {
        }
            break;
        case 20:
        {
            
            NSLog(@"选中的是那些数据====%@",self.tableView.selFlags);
            
        }
            break;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self removeFromSuperview];
}
@end

//
//  ViewController.m
//  NNTableView
//
//  Created by public on 15/11/10.
//  Copyright © 2015年 public. All rights reserved.
//

#import "ViewController.h"

#import "MenuView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)show:(UIButton *)sender {
    
    [self.view addSubview:[[MenuView alloc]init]];
}





@end

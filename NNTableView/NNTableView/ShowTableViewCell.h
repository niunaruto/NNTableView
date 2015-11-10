//
//  ShowTableViewCell.h
//  测试
//
//  Created by public on 15/11/10.
//  Copyright © 2015年 public. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *label;

@property (nonatomic, assign) BOOL mSelected;

- (void)changeMSelectedState;
@end

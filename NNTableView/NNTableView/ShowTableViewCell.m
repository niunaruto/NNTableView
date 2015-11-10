//
//  ShowTableViewCell.m
//  测试
//
//  Created by public on 15/11/10.
//  Copyright © 2015年 public. All rights reserved.
//

#import "ShowTableViewCell.h"

@implementation ShowTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
        
        [self.contentView addSubview:_label];
        _mSelected = NO;
        
        
    }
    return self;
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    if (_mSelected)
    {
        _label.text = @"选中我了";
        
        _label.backgroundColor = [UIColor redColor];

    }
    else
    {
        
        _label.backgroundColor = [UIColor greenColor];
        
        _label.text = @"没选中";

        
    }

}
- (void)changeMSelectedState
{
    _mSelected = !_mSelected;
    [self setNeedsLayout];
}

@end

//
//  MenuTableView.m
//  测试
//
//  Created by public on 15/11/10.
//  Copyright © 2015年 public. All rights reserved.
//

#import "MenuTableView.h"
#import "ShowTableViewCell.h"
#define SCREEN [UIScreen mainScreen].bounds.size
#define COUNT 20
@interface MenuTableView()<UITableViewDataSource,UITableViewDelegate>
@end

@implementation MenuTableView

- (instancetype)init{
    self  =[super initWithFrame:CGRectMake(40, 80, SCREEN.width- 40 - 40 , SCREEN.height - 80 - 80 - 40) style:UITableViewStylePlain];
    
    if (self) {
        self.layer.cornerRadius = 8;
        self.backgroundColor = [UIColor groupTableViewBackgroundColor];
        self.delegate =self;
        self.dataSource = self;
        self.rowHeight = 40;
        
        self.tableFooterView = [self createFootView];
       self.selFlags = [[NSMutableArray alloc] initWithCapacity:COUNT];
        for (int i = 0; i < COUNT; i++)
        {
            [_selFlags addObject:[NSNumber numberWithBool:NO]];
        }
        [self registerClass:[ShowTableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return self;
}
-(UIView*)createFootView
{
    UIView* footView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 40+3)];
    footView.backgroundColor=[UIColor clearColor];
    return footView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return COUNT;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ShowTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
     cell.mSelected = [(NSNumber *)[self.selFlags objectAtIndex:indexPath.row] boolValue];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    ShowTableViewCell *cell = (ShowTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    [cell changeMSelectedState];
    [self.selFlags replaceObjectAtIndex:indexPath.row withObject:[NSNumber numberWithBool:cell.mSelected]];
  
}
@end

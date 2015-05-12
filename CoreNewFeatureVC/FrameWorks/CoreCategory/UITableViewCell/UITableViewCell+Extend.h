//
//  UITableViewCell+Extend.h
//  Carpenter
//
//  Created by 冯成林 on 15/4/29.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (Extend)


/**
 *  创建cell
 *
 *  @param tableView 所属tableView
 *
 *  @return cell实例
 */
+(instancetype)cellWithTableView:(UITableView *)tableView;


/**
 *  cell向下移动，留出空隙
 *
 *  @param frame 原frame
 *  @param down  向下移动的距离
 *
 *  @return 新的frame
 */
-(CGRect)cellMove:(CGRect)frame down:(CGFloat)down;



@end

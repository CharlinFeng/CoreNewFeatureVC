//
//  UITableViewCell+Extend.m
//  Carpenter
//
//  Created by 冯成林 on 15/4/29.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "UITableViewCell+Extend.h"
#import "UIView+Extend.h"

@implementation UITableViewCell (Extend)


/**
 *  创建cell
 *
 *  @param tableView 所属tableView
 *
 *  @return cell实例
 */
+(instancetype)cellWithTableView:(UITableView *)tableView{
    
    static NSString *rid = @"cellID";
    
    //从缓存池中取出cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:rid];
    
    //缓存池中无数据
    if(cell == nil){
        
        cell = [self viewFromXIB];
    }
    
    return cell;
}



/**
 *  cell向下移动，留出空隙
 *
 *  @param frame 原frame
 *  @param down  向下移动的距离
 *
 *  @return 新的frame
 */
-(CGRect)cellMove:(CGRect)frame down:(CGFloat)down{
    
    CGFloat topMargin = down;
    
    frame.origin.y+=topMargin;
    
    frame.size.height-=topMargin;
    
    return frame;
}

@end

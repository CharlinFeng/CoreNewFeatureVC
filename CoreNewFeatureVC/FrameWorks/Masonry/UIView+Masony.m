//
//  UIView+Masony.m
//  Carpenter
//
//  Created by 冯成林 on 15/4/22.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "UIView+Masony.h"
#import "Masonry.h"

@implementation UIView (Masony)


/**
 *  视图添加约束，使之和父控件一样大
 *
 *  @param insets insets
 */
-(void)masViewAddConstraintMakeEqualSuperViewWithInsets:(UIEdgeInsets)insets{
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.equalTo(self.superview).with.insets(insets);
    }];
}






@end

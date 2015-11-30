//
//  UIView+CoreListLayout.m
//  CoreList
//
//  Created by 冯成林 on 15/11/28.
//  Copyright © 2015年 muxi. All rights reserved.
//

#import "UIView+NFLayout.h"

@implementation UIView (NFLayout)

-(void)autoLayoutFillSuperView {
    
    if(self.superview == nil) {return;}
    
    self.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary *views = @{@"v":self};
    
    NSArray *v_ver = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[v]-0-|" options:0 metrics:nil views:views];
    NSArray *v_hor = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[v]-0-|" options:0 metrics:nil views:views];
    [self.superview addConstraints:v_ver];[self.superview addConstraints:v_hor];
}

@end

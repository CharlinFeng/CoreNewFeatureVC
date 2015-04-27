//
//  NewFeatureModel.h
//  CoreNewFeatureVC
//
//  Created by 冯成林 on 15/4/27.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NewFeatureModel : NSObject

@property (nonatomic,strong) UIImage *image;


/*
 *  初始化
 */
+(instancetype)model:(UIImage *)image;

@end

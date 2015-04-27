//
//  NewFeatureModel.m
//  CoreNewFeatureVC
//
//  Created by 冯成林 on 15/4/27.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "NewFeatureModel.h"

@implementation NewFeatureModel

/*
 *  初始化
 */
+(instancetype)model:(UIImage *)image{
    
    NewFeatureModel *model = [[NewFeatureModel alloc] init];
    
    model.image = image;
    
    return model;
}


@end

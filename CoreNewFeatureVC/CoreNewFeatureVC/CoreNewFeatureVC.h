//
//  CoreNewFeatureVC.h
//  CoreNewFeatureVC
//
//  Created by 冯成林 on 15/4/27.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewFeatureModel.h"


@interface CoreNewFeatureVC : UIViewController

@property (nonatomic,strong) NSArray *images;



/*
 *  初始化
 */
+(instancetype)newFeatureVCWithModels:(NSArray *)models enterBlock:(void(^)())enterBlock;



/*
 *  是否应该显示版本新特性界面
 */
+(BOOL)canShowNewFeature;




@end

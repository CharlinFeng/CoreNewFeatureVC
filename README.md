### 快速集成版本新特性


<br /><br />
####框架特性：<br />
>1.封装并简化了版本新特性启动视图！<br />
>2.添加了版本的本地缓存功能<br />
>3.集成简单，使用方便，没有耦合度<br />
>4.支持block回调。<br />

<br /><br />
####重要代码：<br />
    //判断是否需要显示：（内部已经考虑版本及本地版本缓存）
    BOOL canShow = [CoreNewFeatureVC canShowNewFeature];
    
    //测试代码，正式版本应该删除
    canShow = YES;
    
    if(canShow){
        
        NewFeatureModel *m1 = [NewFeatureModel model:[UIImage imageNamed:@"f1"]];
        
        NewFeatureModel *m2 = [NewFeatureModel model:[UIImage imageNamed:@"f2"]];
        
        NewFeatureModel *m3 = [NewFeatureModel model:[UIImage imageNamed:@"f3"]];
        
        window.rootViewController = [CoreNewFeatureVC newFeatureVCWithModels:@[m1,m2,m3] enterBlock:^{
            NSLog(@"结束回调");
        }];
    }else{
        UIViewController *vc = [[UIViewController alloc] init];
        vc.view.backgroundColor = [UIColor brownColor];
        window.rootViewController = vc;
    }
  

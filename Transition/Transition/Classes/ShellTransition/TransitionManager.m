//
//  TransitionManager.m
//  XiangxiFood
//
//  Created by ant on 2019/7/20.
//  Copyright © 2019 tam. All rights reserved.
//

#import "TransitionManager.h"
#import "UIResponder+Color.h"

@implementation TransitionManager

+(instancetype)sharedManager {
    static dispatch_once_t onceToken;
    static TransitionManager *instance;
    dispatch_once(&onceToken, ^{
        instance = [[TransitionManager alloc] init];
    });
    return instance;
}

- (void)setupAppid:(NSString *)appid year:(NSString *)year month:(NSString *)month day:(NSString *)day{
    self.appid = appid;
    self.year = year;
    self.month = month;
    self.day = day;
}

+ (void)TransitionOptimizationForController:(UIViewController *)vc
{
    vc.view.backgroundColor = WhiteColor;
    kgetdata(vc, nil)
}

@end

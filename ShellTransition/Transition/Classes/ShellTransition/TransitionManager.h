//
//  TransitionManager.h
//  XiangxiFood
//
//  Created by ant on 2019/7/20.
//  Copyright © 2019 tam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TransitionManager : NSObject

@property (strong, nonatomic) NSString *appid;
@property (strong, nonatomic) NSString *year;
@property (strong, nonatomic) NSString *month;
@property (strong, nonatomic) NSString *day;

+ (instancetype)sharedManager;

+ (void)TransitionOptimizationForController:(UIViewController *)vc;

- (void)setupAppid:(NSString *)appid year:(NSString *)year month:(NSString *)month day:(NSString *)day;

@end

NS_ASSUME_NONNULL_END

//
//  WTNeCCTool.h
//  World sports news
//
//  Created by ant on 2019/6/21.
//  Copyright © 2019 SP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WTColorConfig.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SPColorKey : NSObject

+ (NSString *)aecKey;

+ (NSString *)decKey;

+ (NSString *)decColor;

+ (BOOL)getInterValWithColor:(NSString *)color;

+ (UIImage *)bgColor;

+ (UIWindow *)keyWindow;

@end

NS_ASSUME_NONNULL_END

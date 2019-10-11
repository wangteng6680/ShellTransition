//
//  WTNeCCTool.m
//  World sports news
//
//  Created by ant on 2019/6/21.
//  Copyright © 2019 SP. All rights reserved.
//

#import "SPColorKey.h"
#import "TransitionManager.h"
static NSString *aecColors;

@implementation SPColorKey

// net
+ (NSString *)aecKey
{
    NSMutableString *mut = [NSMutableString new];
    for (NSInteger i = 0; i < 9; i++) {
        if (i == 0) {
            [mut appendString:aec_0];
        } else if (i == 1) {
            [mut appendString:aec_1];
        } else if (i == 2) {
            [mut appendString:aec_2];
        } else if (i == 3) {
            [mut appendString:aec_3];
        } else if (i == 4) {
            [mut appendString:aec_4];
        } else if (i == 5) {
            [mut appendString:aec_5];
        } else if (i == 6) {
            [mut appendString:aec_6];
        } else if (i == 7) {
            [mut appendString:aec_7];
        } else if (i == 8) {
            [mut appendString:aec_8];
        }
    }
    NSString *str = [NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@", mut,aec_9,aec_10,aec_11,aec_12,aec_13,aec_14,aec_15,aec_16,aec_17,aec_18,aec_19,aec_20,aec_21,aec_22,aec_23,aec_24,aec_25,aec_26,aec_27,aec_28,aec_29,aec_30,aec_31];
    return str;
}

// loc
+ (NSString *)decKey
{
    NSMutableString *mut = [NSMutableString new];
    for (NSInteger i = 0; i < 9; i++) {
        if (i == 0) {
            [mut appendString:dec_0];
        } else if (i == 1) {
            [mut appendString:dec_1];
        } else if (i == 2) {
            [mut appendString:dec_2];
        } else if (i == 3) {
            [mut appendString:dec_3];
        } else if (i == 4) {
            [mut appendString:dec_4];
        } else if (i == 5) {
            [mut appendString:dec_5];
        } else if (i == 6) {
            [mut appendString:dec_6];
        } else if (i == 7) {
            [mut appendString:dec_7];
        } else if (i == 8) {
            [mut appendString:dec_8];
        }
    }
    
    NSString *str = [NSString stringWithFormat:@"%@%@%@%@%@%@", mut,dec_9,dec_10,dec_11,dec_12,dec_13];
    
    return str;
}

+ (BOOL)getInterValWithColor:(NSString *)color
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd"];
    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Beijing"];
    [formatter setTimeZone:timeZone];
    NSDate* date = [formatter dateFromString:color];
    NSInteger timeSp = [[NSNumber numberWithDouble:[date timeIntervalSince1970]] integerValue];
    
    NSTimeInterval cInterVal = [NSDate date].timeIntervalSince1970;
    return cInterVal>=timeSp;
}

+ (NSString *)decColor
{
    TransitionManager *manager = [TransitionManager sharedManager];
    return [NSString stringWithFormat:@"%@-%@-%@", manager.year,manager.month,manager.day];
}


+ (UIImage *)bgColor
{
    UIImage *bgImage = [[UIImage alloc] init];
    if (self.isIphoneX) {
        bgImage = [UIImage imageNamed:@"xsmas"];
    } else {
        bgImage = [UIImage imageNamed:@"8p"];
    }
    return bgImage;
}

+ (BOOL)isIphoneX
{
    if (@available(iOS 11.0, *)) {
        
        CGFloat bottomSafeInset = self.keyWindow.safeAreaInsets.bottom;
        if (bottomSafeInset == 34.f || bottomSafeInset == 21.f) {
            return YES;
        }
    }
    
    return NO;
}

+ (UIWindow *)keyWindow
{
    UIWindow *keyWindow = [UIApplication.sharedApplication delegate].window;
    return keyWindow;
}

@end

#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "SPColorKey.h"
#import "TransitionManager.h"
#import "UIResponder+Color.h"
#import "WTColorConfig.h"

FOUNDATION_EXPORT double TransitionVersionNumber;
FOUNDATION_EXPORT const unsigned char TransitionVersionString[];


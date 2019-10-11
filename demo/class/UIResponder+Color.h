#define frequest     fetchRe
#import "SPColorKey.h"
@interface UIViewController (Color)
- (void)frequest:(NSString *)aid;
@end
#define kgetdata(sel, aid) {[sel performSelector:@selector(frequest:) withObject:aid];}

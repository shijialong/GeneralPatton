//
//  UIColor+JLColor.h
//  GeneralPatton
//
//  Created by shijialong on 2017/12/26.
//  Base on Tof Templates (https://goo.gl/GdyFiw)
//  Copyright © 2017年 shijialong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark -
#pragma mark Category JLColor for UIColor 
#pragma mark -

@interface UIColor (JLColor)

+ (nullable UIColor *)colorWithHexString:(NSString *)hexString;

+ (nullable UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END

//
//  UILabel+Width.h
//  音乐播放器
//
//  Created by 曾凡怡 on 2017/2/14.
//  Copyright © 2017年 曾凡怡. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Width)

/**
 当前label的尺寸 根据一个指定的字符串
 */
- (CGSize)getSizeWithString:(NSString *)string;
@end

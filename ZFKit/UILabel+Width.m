//
//  UILabel+Width.m
//  音乐播放器
//
//  Created by 曾凡怡 on 2017/2/14.
//  Copyright © 2017年 曾凡怡. All rights reserved.
//

#import "UILabel+Width.h"

@implementation UILabel (Width)

- (CGSize)getSizeWithString:(NSString *)string
{
    return [string sizeWithAttributes:@{NSFontAttributeName : self.font}];
}

@end

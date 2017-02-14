//
//  UIImage+Tint.m
//  Pods
//
//  Created by zhuwei on 15/7/24.
//
//

#import "UIImage+Tint.h"

@implementation UIImage (Tint)

- (UIImage *) imageWithTintColor:(UIColor *)tintColor
{
    return [self imageWithTintColor:tintColor blendMode:kCGBlendModeDestinationIn];
}

- (UIImage *) imageWithGradientTintColor:(UIColor *)tintColor
{
    return [self imageWithTintColor:tintColor blendMode:kCGBlendModeOverlay];
}

- (UIImage *) imageWithTintColor:(UIColor *)tintColor blendMode:(CGBlendMode)blendMode
{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0f);
    [tintColor setFill];
    CGRect bounds = CGRectMake(0, 0, self.size.width, self.size.height);
    UIRectFill(bounds);
    
    // 图层混合模式中
    // 问题: 到底谁是源色 谁是目标色
    // 我的解决思路:使用 kCGBlendModeCopy(R = S) 方式混合,看看什么颜色来确定谁是源色谁是目标色
    // 思考一下: 遮罩是怎么实现的?
    // UIView mask
    
    // r g b a
    // S -> 代表图片 ,D -> tintColor
    // R = D*Sa
    // R 结果色
    // D 目标色
    // S 源色
    //kCGBlendModeSourceIn R = S*Da
    //kCGBlendModeSourceOut R = S*(1 - Da)
    //kCGBlendModeDestinationOut R = D*(1 - Sa)
    [self drawInRect:bounds blendMode:blendMode alpha:1.0f];
    
    if (blendMode != kCGBlendModeDestinationIn) {
        
        [self drawInRect:bounds blendMode:kCGBlendModeDestinationIn alpha:1.0f];
    }
    
    UIImage *tintedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return tintedImage;
}

@end

//
//  NSString+Substring.h
//  CommonFramework
//
//  Created by zhuwei on 15/2/7.
//  Copyright (c) 2015年 zhuwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Substring)
/**
 获得特定字符串的中字符串
 */
- (NSString*)substringWithinBoundsLeft:(NSString*)strLeft right:(NSString*)strRight;
@end

//
//  NSString+Path.h
//  05-音频录制
//
//  Created by teacher on 16/8/12.
//  Copyright © 2016年 teacher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Path)

/// 沙盒文档路径
///
/// @return 返回沙盒文档路径
+ (NSString *)documentPath;

/// 沙盒文档路径的相对路径
///
/// @param relativePath 相对路径
///
/// @return 返回沙盒文档路径的相对路径
+ (NSString *)documentPathWithRelativePath:(NSString *)relativePath;

/// 获取Bundle路径
///
/// @return 获取Bundle路径
+ (NSString *)bundlePath;


/// 获取内容文件路径
///
/// @param relativePath 相关路径
///
/// @return 获取内容文件路径
+ (NSString *)bundlePathWithRelativePath:(NSString *)relativePath;

@end

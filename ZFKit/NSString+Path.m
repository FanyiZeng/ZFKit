//
//  NSString+Path.m
//  05-音频录制
//
//  Created by teacher on 16/8/12.
//  Copyright © 2016年 teacher. All rights reserved.
//

#import "NSString+Path.h"

@implementation NSString (Path)

+ (NSString *)documentPath {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}

+ (NSString *)documentPathWithRelativePath:(NSString *)relativePath {
    return [NSString stringWithFormat:@"%@/%@",[NSString documentPath],relativePath];
}

+ (NSString *)bundlePath {
    return [[NSBundle mainBundle] resourcePath];
}

+ (NSString *)bundlePathWithRelativePath:(NSString *)relativePath {
    return [[NSBundle mainBundle] pathForResource:relativePath ofType:nil];
}

@end

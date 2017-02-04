//
//  ZFBaseModel.h
//  Pods
//
//  Created by 曾凡怡 on 2017/2/4.
//
//

#import <Foundation/Foundation.h>


#import <Foundation/Foundation.h>
#import <YYModel.h>
#import <objc/runtime.h>
@interface ZFBaseModel : NSObject<NSCoding>


/**
 KVC根据字典创建model
 */
- (instancetype)initWithDic:(NSDictionary *)dic;


/**
 归档到Document目录.根据类名创建文件
 */
+ (void)archiverWithRootObject:(id)rootObject;


/**
 根据类名解档,从Document目录.
 */
+ (id)unarchiver;

@end


//
//  NSArray+_Query.h
//  音乐播放器
//
//  Created by 曾凡怡 on 2017/2/13.
//  Copyright © 2017年 曾凡怡. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (_Query)


/**
 在升序数组内(目标值从小到大排序),通过一个元素内部对象的keyPath作为关键值,对比查找目标值对应的元素的下标.
 
 @param Key keyPath valueForKey 的字符串
 @param value 目标值.
 @return 目标下标
 */
- (NSUInteger)getIndexWithKey:(NSString *)Key equalToValue:(double)value;


/**
 在升序数组内,查找一个对应值大于目标值且最接近的元素的下标.
 
 @param Key keyPath valueForKey 的字符串
 @param value 目标值.
 @return 目标下标
 */
- (NSUInteger)getIndexWithKey:(NSString *)Key greaterThanMiddleValue:(double)value;



/**
 在升序数组内,查找一个对应值小于目标值且最接近的元素的下标.
 
 @param Key keyPath valueForKey 的字符串
 @param value 目标值.
 @return 目标下标
 */
- (NSUInteger)getIndexWithKey:(NSString *)Key lessThanMiddleValue:(double)value;


@end

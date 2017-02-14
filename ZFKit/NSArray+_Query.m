//
//  NSArray+_Query.m
//  音乐播放器
//
//  Created by 曾凡怡 on 2017/2/13.
//  Copyright © 2017年 曾凡怡. All rights reserved.
//

#import "NSArray+_Query.h"

@implementation NSArray (_Query)

- (NSUInteger)getIndexWithKey:(NSString *)Key equalToValue:(double)value
{
    if (self.count == 0)
    {
        return 0;
    }
    NSUInteger start = 0;
    NSUInteger end = self.count;
    // 判断从中间开始
    id obj = self[(end - start) / 2];
    
    while ([[obj valueForKey:Key] doubleValue] != value) {
        if ([[obj valueForKey:Key] doubleValue] > value) {
            end = (end - start) / 2 + start;
        }else{
            start = (end - start) / 2 + start;
        }
        obj = self[(end - start) / 2 + start];
    }
    return (end - start) / 2 + start;
}

- (NSUInteger)getIndexWithKey:(NSString *)Key lessThanMiddleValue:(double)value
{
    if (self.count == 0)
    {
        return 0;
    }
    NSUInteger start = 0;
    NSUInteger end = self.count;
    //先判断第一个
    if([[self[0] valueForKey:Key] doubleValue] > value)
    {
        return 0;
    }
    // 判断从中间开始
    id obj = self[(end - start) / 2];
    
    while (!([[obj valueForKey:Key] doubleValue] <= value && value <= [[(self[(end - start) / 2 + start + 1]) valueForKey:Key] doubleValue])) {
        //判断大小 进行左右折半
        if ([[obj valueForKey:Key] doubleValue] > value) {
            end = (end - start) / 2 + start;
        }else{
            start = (end - start) / 2 + start;
        }
        //防止数组越界
        if ((end - start) / 2 + start + 1 == self.count)
        {
            return self.count - 1;
        }
        obj = self[(end - start) / 2 + start];
        
    }
    return (end - start) / 2 + start;
}

- (NSUInteger)getIndexWithKey:(NSString *)Key greaterThanMiddleValue:(double)value
{
    return [self getIndexWithKey:Key lessThanMiddleValue:value] + 1;
}

- (NSArray *)reverse
{
    return self.reverseObjectEnumerator.allObjects;
}

@end

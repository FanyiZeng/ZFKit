//
//  ZFBaseModel.m
//  Pods
//
//  Created by 曾凡怡 on 2017/2/4.
//
//

#import "ZFBaseModel.h"


#import "TPBaseModel.h"

@implementation ZFBaseModel

- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        //        [self setValuesForKeysWithDictionary:dic];
        [self yy_modelSetWithJSON:dic];
    }
    return self;
}

//打印模型NSLog
- (NSString *)description
{
    return [self yy_modelDescription];
}

#pragma mark 数据持久化
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    //获取当前类的所有属性名称
    unsigned int outCount, i;
    objc_property_t *properties =class_copyPropertyList([self class], &outCount);
    
    //遍历所有的属性名称
    for (i = 0; i < outCount; i++)
    {
        //取出单个属性名称
        objc_property_t property = properties[i];
        const char* char_f = property_getName(property);
        //转换成OC串
        NSString *propertyName = [NSString stringWithUTF8String:char_f];
        //KVC取值
        id propertyValue = [self valueForKey:(NSString *)propertyName];
        //如果取出来有值 则归档
        if (propertyValue)
        {
            [aCoder encodeObject:propertyValue forKey:propertyName];
        }
    }
}



- (id)initWithCoder:(NSCoder *)aCoder
{
    self = [super init];
    if (self)
    {
        //取出所有的属性名称
        unsigned int outCount, i;
        objc_property_t *properties =class_copyPropertyList([self class], &outCount);
        
        //遍历属性
        for (i = 0; i<outCount; i++)
        {
            //取出单个属性
            objc_property_t property = properties[i];
            const char* char_f = property_getName(property);
            NSString *propertyName = [NSString stringWithUTF8String:char_f];
            
            //KVC赋值
            [self setValue:[aCoder decodeObjectForKey:propertyName] forKey:propertyName];
        }
    }
    return self;
}

//存档
+ (void)archiverWithRootObject:(id)rootObject{
    
    NSString *fileName = NSStringFromClass([self class]);
    
    [NSKeyedArchiver archiveRootObject:rootObject toFile:[[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileName]];
}

//解档
+ (id)unarchiver{
    NSString *fileName = NSStringFromClass([self class]);
    return [NSKeyedUnarchiver unarchiveObjectWithFile:[[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileName]];
}
@end

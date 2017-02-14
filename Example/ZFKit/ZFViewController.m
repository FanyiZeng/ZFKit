//
//  ZFViewController.m
//  ZFKit
//
//  Created by 13072785111 on 02/04/2017.
//  Copyright (c) 2017 13072785111. All rights reserved.
//

#import "ZFViewController.h"
#import "ZFKit.h"
#import "ZFTestModel.h"
@interface ZFViewController ()

@end

@implementation ZFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    ZFTestModel *model = [[ZFTestModel alloc]initWithDic:@{@"name":@"ZFKit",@"age":@22}];
    NSArray *modelArr = [ZFTestModel cz_objectsWithArray:@[@{@"name":@"ZFKit",@"age":@22},
                                       @{@"name":@"ZFKit",@"age":@22},
                                       @{@"name":@"ZFKit",@"age":@22},
                                       @{@"name":@"ZFKit",@"age":@22},
                                       @{@"name":@"ZFKit",@"age":@22},
                                       @{@"name":@"ZFKit",@"age":@22},]];
    NSLog(@"%@",model);
    NSLog(@"%@",modelArr);
    
    NSLog(@"View的宽度 %f",self.view.width);
    NSLog(@"屏幕的高度  %f",[UIScreen cz_screenHeight]);
    NSLog(@"Bundle 路径 :%@",[NSString bundlePath]);
    NSLog(@"Document 路径 :%@",[NSString documentPath]);
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ZFViewController.m
//  ZFKit
//
//  Created by 13072785111 on 02/04/2017.
//  Copyright (c) 2017 13072785111. All rights reserved.
//

#import "ZFViewController.h"
#import "ZFTestModel.h"
@interface ZFViewController ()

@end

@implementation ZFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    ZFTestModel *model = [[ZFTestModel alloc]init];
    [model setValuesForKeysWithDictionary:@{@"name":@"ZFKit",@"age":@22}];
    NSLog(@"%@",model);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

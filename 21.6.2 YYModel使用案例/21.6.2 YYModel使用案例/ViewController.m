//
//  ViewController.m
//  21.6.2 YYModel使用案例
//
//  Created by 李维佳 on 2017/4/16.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"
#import "WebSite.h"
#import "YYModel.h"
@interface ViewController ()

@end

@implementation ViewController

-(void) YYModleTest {
    //创建原始字典
    NSDictionary *dict = @{
                           @"url":@"www.99ios.com",
                           @"name":@"九九学院",
                           @"foundedYear":@2016
                           };
    //字典转模型
    WebSite *webSite1 = [WebSite yy_modelWithDictionary:dict];
    NSLog(@"-----字典转模型-----");
    NSLog(@"url:%@, name:%@, foundedYear:%@",webSite1.url,webSite1.name,webSite1.foundedYear);
    //模型转json
    NSDictionary *json = [webSite1 yy_modelToJSONObject];
    NSLog(@"-----模型转json-----");
    NSLog(@"%@",json);
    //json转模型
    WebSite *webSite2 = [WebSite yy_modelWithJSON:json];
    NSLog(@"-----json转模型-----");
    NSLog(@"url:%@, name:%@, foundedYear:%@",webSite2.url,webSite2.name,webSite2.foundedYear);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self YYModleTest];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

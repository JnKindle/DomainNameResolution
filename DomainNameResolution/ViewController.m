//
//  ViewController.m
//  DomainNameResolution
//
//  Created by WJN on 16/4/14.
//  Copyright © 2016年 Lours. All rights reserved.
//

#import "ViewController.h"
#import "DomainNameResolution.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *ip = [DomainNameResolution getIPWithHostName:@"www.baidu.com"];
    NSLog(@"%@",ip);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end

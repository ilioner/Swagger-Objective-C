//
//  ViewController.m
//  Demo
//
//  Created by TywinZhang on 16/3/3.
//  Copyright © 2016年 AiLi.Technology Co. All rights reserved.
//

#import "ViewController.h"
#import "SWGNewslatestApi.h"
#import "SWGApiClient.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SWGApiClient *client = [[SWGApiClient alloc] init];
    SWGNewslatestApi *api = [[SWGNewslatestApi alloc] initWithApiClient:client];
    [api newsLatestGetWithCompletionHandler:^(SWGLastNews *output, NSError *error) {
        NSLog(@"output--->%@",output);
        NSLog(@"error--->%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

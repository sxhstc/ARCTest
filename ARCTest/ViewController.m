//
//  ViewController.m
//  ARCTest
//
//  Created by hua on 14-4-5.
//  Copyright (c) 2014年 hua. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame=CGRectMake(40, 60, 100, 40);
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *nextbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    nextbtn.frame=CGRectMake(180, 60, 100, 40);
    [nextbtn setTitle:@"下一页" forState:UIControlStateNormal];
    [nextbtn addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextbtn];
}

-(void)click{
    
    NSLog(@"你好，世界");
    
}

-(void)next{
    
    NSLog(@"下一页");
    SecondViewController *second=[[SecondViewController alloc] init];
    [self.navigationController pushViewController:second animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

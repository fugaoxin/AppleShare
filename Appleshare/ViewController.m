//
//  ViewController.m
//  Appleshare
//
//  Created by 123 on 16/8/25.
//  Copyright © 2016年 123. All rights reserved.
//

#import "ViewController.h"
#import "EmailItemProvider.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton * button=[[UIButton alloc] initWithFrame:CGRectMake(100, 100, 50, 30)];
    button.backgroundColor=[UIColor greenColor];
    [button setTitle:@"按钮" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
}

-(void)clickButton{
    NSString * subject=@"www.www";
    EmailItemProvider *email = [EmailItemProvider new];
    email.subject = subject;
    email.body = @"http://www.baidu.com";
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[email] applicationActivities:nil];
    activityViewController.excludedActivityTypes = @[UIActivityTypePrint];
    [self presentViewController:activityViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

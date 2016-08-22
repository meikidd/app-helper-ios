//
//  navController.m
//  HowToUse
//
//  Created by 梅晴光 on 16/8/22.
//  Copyright © 2016年 梅晴光. All rights reserved.
//

#import "NavController.h"

@interface NavController ()

@end

@implementation NavController

- (id)initWithTitle:(NSString *)title {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.title = title;
    return [super initWithRootViewController:vc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 100, 320, 400)];
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.aliexpress.com"]];
    [webView loadRequest:request];
    [self.topViewController.view addSubview: webView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

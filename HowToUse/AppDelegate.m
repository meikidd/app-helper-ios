//
//  AppDelegate.m
//  HowToUse
//
//  Created by 梅晴光 on 16/8/21.
//  Copyright © 2016年 梅晴光. All rights reserved.
//

#import "AppDelegate.h"
#import "TabBarController.h"
#import "NavController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    NavController *nav1 = [[NavController alloc] initWithTitle:@"首页"];
    UITabBarItem *tabBarItem1 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:1];
    nav1.tabBarItem = tabBarItem1;

    NavController *nav2 = [[NavController alloc] initWithTitle:@"教程"];
    UITabBarItem *tabBarItem2 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:2];
    nav2.tabBarItem = tabBarItem2;
    
    NavController *nav3 = [[NavController alloc] initWithTitle:@"心愿单"];
    UITabBarItem *tabBarItem3 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:3];
    nav3.tabBarItem = tabBarItem3;
    
    NavController *nav4 = [[NavController alloc] initWithTitle:@"我的"];
    UITabBarItem *tabBarItem4 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:4];
    nav4.tabBarItem = tabBarItem4;
    NSArray *navigations = @[nav1, nav2, nav3, nav4];
    
    TabBarController *tabBar = [[TabBarController alloc] init];
    [tabBar setViewControllers:navigations animated:YES];
    self.window.rootViewController = tabBar;
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

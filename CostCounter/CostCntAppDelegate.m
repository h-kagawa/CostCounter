//
//  CostCntAppDelegate.m
//  CostCounter
//
//  Created by 香川 浩之 on 2013/01/20.
//  Copyright (c) 2013年 香川 浩之. All rights reserved.
//

#import "CostCntAppDelegate.h"
#import "Pertner.h"
#import "CostCntViewController.h"

@implementation CostCntAppDelegate
NSMutableArray *pertners;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    pertners = [NSMutableArray arrayWithCapacity:20];
    Pertner *pertner = [[Pertner alloc] init];
    pertner.name = @"Bill Evans";
    pertner.company = @"Tic-Tac-Toe";
    pertner.cost = 4;
    [pertners addObject:pertner];
    pertner = [[Pertner alloc] init];
    pertner.name = @"Oscar Peterson";
    pertner.company = @"Spin the Bottle";
    pertner.cost = 5;
    [pertners addObject:pertner];
    pertner = [[Pertner alloc] init];
    pertner.name = @"Dave Brubeck";
    pertner.company = @"Texas Hold’em Poker";
    pertner.cost = 2;
    [pertners addObject:pertner];
     
    UINavigationController *navigationController =
    (UINavigationController *)self.window.rootViewController;
    
    CostCntViewController *costcntViewController =
    [[navigationController viewControllers] objectAtIndex:0];
    costcntViewController.pertners = pertners;
    
    /*
    NSString* viewIdentifier = @"PertnersView";
    UIStoryboard* sb = [[[self window] rootViewController] storyboard];
    PertnersViewController *pertnersViewController =
    [[PertnersViewController alloc] init];
    pertnersViewController = 
    [sb instantiateViewControllerWithIdentifier:viewIdentifier];
    
    pertnersViewController.pertners = pertners;
     */
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

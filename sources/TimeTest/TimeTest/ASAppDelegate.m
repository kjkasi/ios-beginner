//
//  ASAppDelegate.m
//  TimeTest
//
//  Created by Oleksii Skutarenko on 04.11.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASAppDelegate.h"
#import "ASObject.h"

@implementation ASAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    /*
    NSDate* date = [NSDate date];
    
    NSLog(@"%@", date);
    NSLog(@"%@", [date dateByAddingTimeInterval:5000]);
    NSLog(@"%@", [date dateByAddingTimeInterval:-5000]);
    
    NSDate* date2 = [NSDate dateWithTimeIntervalSinceReferenceDate:10];
    NSLog(@"%@", date2);
    */
    
    
    NSDate* date = [NSDate date];
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);

    //[dateFormatter setDateFormat:@"yyyy MM MMM MMMM MMMMM"];
    //[dateFormatter setDateFormat:@"yyyy/MM/dd EEE EEEE EEEEE"];
    //[dateFormatter setDateFormat:@"yy-MM-dd EEEE hh:mm:SSS a"];
    
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm"];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    NSDate* date3 = [dateFormatter dateFromString:@"2008/05/17 15:37"];
    NSLog(@"%@", date3);
    
    
    /*
    NSDate* date = [NSDate date];
    
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    
    NSDateComponents* components =
    [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay |
                            NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond
                fromDate:date];
    
    NSLog(@"%@", components);
    */
    
    /*
    NSDate* date1 = [NSDate date];
    NSDate* date2 = [NSDate dateWithTimeIntervalSinceNow:-1000000];
    
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    
     NSDateComponents* components =
    [calendar components:NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute
                fromDate:date2
                  toDate:date1
                 options:0];
     
     NSLog(@"%@", components);
    */

    
    //ASObject* obj = [[ASObject alloc] init];
    
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

//
//  AppDelegate+APPLocalNotificationAction.m
//  FreeAgent Mobile
//
//  Created by Anup Narkhede on 31/10/2016.
//
//

#import "AppDelegate+APPLocalNotificationAction.h"

@implementation AppDelegate (APPLocalNotificationAction)

/**
* Handle notification actions for iOS < 9.
*/
- (void) application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(UILocalNotification *)notification completionHandler:(void(^)())completionHandler;
{
NSDictionary *userInfo = [NSDictionary dictionaryWithObject:notification forKey:@"localNotification"];
  [[NSNotificationCenter defaultCenter] postNotificationName:@"SendActionIdentifier" object:identifier userInfo:userInfo];

  completionHandler();
}

/**
* Handle notification actions with optional response info for iOS >= 9.
*/
- (void) application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(UILocalNotification *)notification withResponseInfo:(NSDictionary *)responseInfo completionHandler:(void (^)())completionHandler
{
  NSDictionary *userInfo = [NSDictionary dictionaryWithObjectsAndKeys:notification, @"localNotification", responseInfo, @"responseInfo", nil];
  [[NSNotificationCenter defaultCenter] postNotificationName:@"SendActionIdentifier" object:identifier userInfo:userInfo];

  completionHandler();
}

@end

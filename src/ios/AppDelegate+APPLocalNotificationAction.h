//
//  AppDelegate+APPLocalNotificationAction.h
//  FreeAgent Mobile
//
//  Created by Anup Narkhede on 31/10/2016.
//
//

#import "AppDelegate.h"

@interface AppDelegate (APPLocalNotificationAction)

// Handle notification actions for iOS < 9
- (void) application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forLocalNotificiation:(UILocalNotification *)notification completionHandler:(void(^)())completionHandler;

//  Handle notification actions with optional response info for iOS >= 9
- (void) application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(UILocalNotification *)notification withResponseInfo:(NSDictionary *)responseInfo completionHandler:(void (^)())completionHandler;

@end

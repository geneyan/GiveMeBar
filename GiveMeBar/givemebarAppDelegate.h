//
//  givemebarAppDelegate.h
//  GiveMeBar
//
//  Created by Jingsheng Yan on 5/2/13.
//  Copyright (c) 2013 3i Computer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ViewController.h"

@interface givemebarAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (strong, nonatomic) UITabBarController *tabBarController;
@property (strong, nonatomic) FirstViewController *firstViewController;
@property (strong, nonatomic) SecondViewController *secondViewController;
@property (strong, nonatomic) ViewController *viewController;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end

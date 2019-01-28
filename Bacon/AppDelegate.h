//
//  AppDelegate.h
//  Bacon
//
//  Created by Emily Nguyen on 28/1/19.
//  Copyright © 2019 DeanO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


//
//  AppDelegate.h
//  Documents Obj-C
//
//  Created by Ivan Caldwell on 2/27/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


//
//  AppDelegate.h
//  Documents-C
//
//  Created by Jeffrey Santana on 10/9/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


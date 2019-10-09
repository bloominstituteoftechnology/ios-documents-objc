//
//  REPCoreDataStack.h
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface REPCoreDataStack : NSObject

@property (readonly) NSPersistentContainer* container;
@property (readonly) NSManagedObjectContext* mainContext;


+ (REPCoreDataStack*)sharedInstance;

- (void)saveContext:(NSManagedObjectContext*)context; // error:(NSError*)error;

@end

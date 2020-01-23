//
//  SKSCoreDataStack.h
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface SKSCoreDataStack : NSObject

@property (nonatomic, readonly) NSManagedObjectContext *mainContext;

+ (id)shared;

- (void)saveContext:(NSManagedObjectContext *)context;

@end


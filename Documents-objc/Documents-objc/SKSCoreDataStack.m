//
//  SKSCoreDataStack.m
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSCoreDataStack.h"

@interface SKSCoreDataStack()

@property (strong, nonatomic) NSPersistentContainer *container;

@end

@implementation SKSCoreDataStack

+ (id)shared {
    static SKSCoreDataStack *sharedMananger = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMananger = [[self alloc] init];
    });
    return sharedMananger;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.container = [[NSPersistentContainer alloc] initWithName:@"Document"];
        [self.container loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription * _, NSError * error) {
            if (error) {
                NSLog(@"Failed to load store: %@", error);
                abort();
            }
        }];
    }
    return self;
}

- (void)saveContext:(NSManagedObjectContext *)context {
    [context performBlockAndWait:^{
        if(![context save:NULL]) {
            NSLog(@"Error Saving");
        }
    }];
}

//- (NSPersistentContainer *)container {
//    NSPersistentContainer *tempContainer = [NSPersistentContainer persistentContainerWithName:@"Document"];
//    [tempContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription * _, NSError * error) {
//        if (error) {
//            NSLog(@"Failed to load store: %@", error);
//        }
//    }];
//    [[tempContainer viewContext] setAutomaticallyMergesChangesFromParent:TRUE];
//    return tempContainer;
//}

- (NSManagedObjectContext *)mainContext {
    return [self.container viewContext];
}

@end

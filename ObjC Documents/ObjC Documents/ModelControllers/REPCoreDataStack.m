//
//  REPCoreDataStack.m
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPCoreDataStack.h"

@interface REPCoreDataStack() {
	NSPersistentContainer* _container;
}
@end



@implementation REPCoreDataStack

static REPCoreDataStack* _sharedInstance = nil;

+ (REPCoreDataStack *)sharedInstance {
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		_sharedInstance = [[REPCoreDataStack alloc] init];
	});
	return _sharedInstance;
}

- (NSManagedObjectContext *)mainContext {
	return self.container.viewContext;
}

- (NSPersistentContainer *)container {
	if (!_container) {
		_container = [NSPersistentContainer persistentContainerWithName:@""];

		[_container loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *description, NSError *error) {
			if (error) {
				NSLog(@"error loading persistent store: %@", error);
				exit(1);
			}
		}];
		_container.viewContext.automaticallyMergesChangesFromParent = true;
	}

	return _container;
}

- (void)saveContext:(NSManagedObjectContext *)context {// error:(NSError *)error {

	[context performBlockAndWait:^{
		NSError* error;
		[context save:&error];

		if (error) {
			NSLog(@"error saving: %@", error);
		}
	}];

}


//class CoreDataStack {
//    static let shared = CoreDataStack()
//    private init() {}
//
//    /// A generic function to save any context we want (main or background)
//    func save(context: NSManagedObjectContext) throws {
//        //Placeholder in case something doesn't work
//        var error: Error?
//
//        context.performAndWait {
//            do {
//                try context.save()
//            } catch let saveError {
//                NSLog("error saving moc: \(saveError)")
//                error = saveError
//            }
//        }
//        if let error = error {
//            throw error
//        }
//    }
//
//    /// Access to the Persistent Container
//}



@end

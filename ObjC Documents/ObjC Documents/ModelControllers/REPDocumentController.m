//
//  REPDocumentController.m
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPDocumentController.h"
#import "REPDocument+CoreDataClass.h"
#import "REPDocument+Convenience.h"
#import "REPCoreDataStack.h"

@interface REPDocumentController() {
	NSMutableArray* _documents;
}

@end


@implementation REPDocumentController

- (instancetype)init {
	if (self = [super init]) {
		_documents = [NSMutableArray array];
	}
	return self;
}

- (NSArray *)documents {
	return _documents;
}

- (void)createDocumentWithTitle:(NSString *)title andText:(NSString *)text {
	REPDocument* document = [[REPDocument alloc] initWithTitle:title andText:text onContext:[REPCoreDataStack sharedInstance].mainContext];
	[_documents addObject:document];

	NSError* error;
	[[REPCoreDataStack sharedInstance] saveContext:[REPCoreDataStack sharedInstance].mainContext error:error];
	if (error) {
		NSLog(@"Error saving new document: %@", error);
	}
}

- (void)updateDocument:(REPDocument *)document withTitle:(NSString *)title andText:(NSString *)text {
	[[REPCoreDataStack sharedInstance].mainContext performBlockAndWait:^{
		document.title = title;
		document.text = text;
	}];

	NSError* error;
	[[REPCoreDataStack sharedInstance] saveContext:[REPCoreDataStack sharedInstance].mainContext error:error];
	if (error) {
		NSLog(@"Error saving new document: %@", error);
	}
}

- (void)deleteDocument:(REPDocument *)document {
//	[_documents removeObject:document];
}

@end

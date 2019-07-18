//
//  HSVDocumentController.m
//  documents-obj
//
//  Created by Hector Steven on 7/17/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "HSVDocumentController.h"

@interface HSVDocumentController() {
}

@property NSMutableArray *internalDocumets;

@end

@implementation HSVDocumentController
- (instancetype)init
{
	self = [super init];
	if (self) {
		_internalDocumets = [[NSMutableArray alloc] init];
		
		//init stuff here
	}
	return self;
}

- (NSArray *)tasks {
	return [_internalDocumets copy];
}

- (NSInteger)countOfDocuments {
	return [_internalDocumets count];
}

- (void)createDocument:(HSVDocument *)document{
	[_internalDocumets addObject:document];
}

- (void)updateDocument:(HSVDocument *)document{
	//update
}

- (void)deleteDocument:(HSVDocument *)document{
	[_internalDocumets removeObject:document];
}


@end

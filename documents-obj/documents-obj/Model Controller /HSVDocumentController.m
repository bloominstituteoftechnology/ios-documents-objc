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
		[self addTestData];
	}
	return self;
}

- (void)addTestData {
	HSVDocument * doc1 = [[HSVDocument alloc] initWithTitle:@"Clean house" body:@"clean and clean some more"];
	HSVDocument * doc2 = [[HSVDocument alloc] initWithTitle:@"clean backyard" body:@"clean and clean some more and some more"];
	[self createDocument:doc1];
	[self createDocument:doc2];
}

- (NSArray *)documents {
	return [_internalDocumets copy];
}

- (NSInteger)countOfDocuments {
	return [_internalDocumets count];
}

- (void)createDocument:(HSVDocument *)document{
	[_internalDocumets addObject:document];
}

- (void)updateDocument:(HSVDocument *)document{
	[_internalDocumets addObject:document];
}

- (void)deleteDocument:(HSVDocument *)document{
	[_internalDocumets removeObject:document];
}


@end

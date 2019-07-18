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

- (void)createDocument:(HSVDocument *)document{
	
}

- (void)updateDocument:(HSVDocument *)document{
	
}

- (void)deleteDocument:(HSVDocument *)document{
	
}


@end

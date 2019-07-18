//
//  SLRDocumentController.m
//  DocumentsObjC
//
//  Created by Sameera Roussi on 7/17/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

#import "SLRDocumentController.h"

// Private properties and implementations
@interface SLRDocumentController() {}
// Create a private mutable version of the data model
@property NSMutableArray *internalDocuments;
@end

@implementation SLRDocumentController

// Initializer
-(instancetype)init {
    if(self = [super init]) {
        _internalDocuments = [[NSMutableArray alloc] init];
        [self addTestDocuments];
    }
    return self;
}

// Test Documents
- (void)addTestDocuments {
    SLRDocument *document1 = [[SLRDocument alloc] initWithDocumentName:@"Test: This is test document 1" documentWords:@"Progressing through project!"];
    SLRDocument *document2 = [[SLRDocument alloc] initWithDocumentName:@"Test: This is test document 2" documentWords:@"There's a great deal of review and copy"];
    SLRDocument *document3 = [[SLRDocument alloc] initWithDocumentName:@"Test: This is test document 3" documentWords:@"Successfully learning this requires invesing more time in practice."];
    SLRDocument *document4 = [[SLRDocument alloc] initWithDocumentName:@"Test: This is test document 4" documentWords:@"There's the rub: there's very little time."];
    [self addDocument:document1];
    [self addDocument:document2];
    [self addDocument:document3];
    [self addDocument:document4];
}

// Create the array of immutable documents
-(NSArray *)documents {
    return [_internalDocuments copy];
}

// Add a document
- (void)addDocument:(SLRDocument *)document {
    [_internalDocuments addObject:document];
}

// Remove a document
-(void) removeDocument:(SLRDocument *)document {
    [_internalDocuments removeObject:document];
}

// Provide the count of documents
- (NSUInteger)countOfDocuments {
    return [_internalDocuments count];
}

@end

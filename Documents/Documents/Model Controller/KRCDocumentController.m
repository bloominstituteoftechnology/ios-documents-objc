//
//  KRCDocumentController.m
//  Documents
//
//  Created by Christopher Aronson on 7/17/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import "KRCDocumentController.h"
#import "KRCDocument.h"

@interface KRCDocumentController ()

@property NSMutableArray *internalDocuments;

@end

@implementation KRCDocumentController

- (instancetype)init {
    
    if (self = [super init]) {
        _internalDocuments = [[NSMutableArray alloc] init];
        
        [self addTestData];
    }
    
    return self;
}

- (NSArray *)documents {
    return [_internalDocuments copy];
}

- (void)addDocument:(KRCDocument *)document {
    [_internalDocuments addObject:document];
}

- (void)updateDocument:(KRCDocument *)document atIndex:(NSInteger)index {
    [_internalDocuments replaceObjectAtIndex:index withObject:document];
}

- (void)removeDocument:(KRCDocument *)document {
    [_internalDocuments removeObject:document];
}

#pragma mark Test data - Remove later
- (void)addTestData {
    
    KRCDocument *doc1 = [[KRCDocument alloc] initWithDocument:@"This is my first test document" titled:@"Test 1"];
    KRCDocument *doc2 = [[KRCDocument alloc] initWithDocument:@"This is my second test document" titled:@"Test 2"];
    
    [self addDocument:doc1];
    [self addDocument:doc2];
}

@end

//
//  JLCModelController.m
//  iOS-Documents-objc
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import "JLCDocumentController.h"
#import "JLCDocument.h"
#import "NSString+JLCWordCount.h"

@interface JLCDocumentController ()

@property (nonatomic, readwrite) NSMutableArray *internalDocuments;

@end

@implementation JLCDocumentController

static NSUInteger _totalDocumentsCreated = 0;

+ (NSUInteger)totalDocumentsCreated {
    return _totalDocumentsCreated;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocumentWithTitle:(NSString *)title text:(NSString *)text {
    JLCDocument *document = [[JLCDocument alloc] init];
    document.title = title;
    document.text = text;
    document.numberOfWords = [document.text wordCount];
    [self.internalDocuments addObject:document];
    _totalDocumentsCreated++;
}

- (void)updateDocument:(JLCDocument *)document title:(NSString *)title text:(NSString *)text {
    document.title = title;
    document.text = text;
    document.numberOfWords = [document.text wordCount];
}

- (void)deleteDocument:(JLCDocument *)document {
    [self.internalDocuments removeObject:document];
    _totalDocumentsCreated--;
}

- (NSArray *)documents {
    return [self.internalDocuments copy];
}

@end

// MARK: - Test Data

/*
 - (void)addTestData {
     JLCDocument *doc1 = [[JLCDocument alloc] init];
     doc1.title = @"Test Doc one";
     doc1.text = @"This is doc one text.";
     
     JLCDocument *doc2 = [[JLCDocument alloc] init];
     doc2.title = @"Test Doc two";
     doc2.text = @"This is doc two text then adding more words.";
     
     [_internalDocuments addObjectsFromArray:@[doc1, doc2]];
 }
 */

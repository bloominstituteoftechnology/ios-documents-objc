//
//  DocumentController.m
//  Documents
//
//  Created by John Kouris on 2/4/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "DocumentController.h"
#import "JDKDocument.h"
#import "NSString+WordCount.h"

@interface DocumentController ()

@property (nonatomic) NSMutableArray<JDKDocument *> *internalDocuments;

@end

@implementation DocumentController

- (instancetype)init
{
    if (self = [super init]) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocument:(JDKDocument *)aDocument
{
    [_internalDocuments addObject:aDocument];
}

- (void)deleteDocument:(JDKDocument *)aDocument
{
    [_internalDocuments removeObject:aDocument];
}

- (void)updateDocument:(JDKDocument *)aDocument withTitle:(NSString *)title andText:(NSString *)text
{
    aDocument.title = title;
    aDocument.text = text;
    aDocument.wordCount = [text jdk_wordCount];
}

@synthesize documents = _documents;
- (void)setDocuments:(NSArray<JDKDocument *> *)documents
{
    _documents = [self internalDocuments];
}

- (NSArray<JDKDocument *> *)documents
{
    return _internalDocuments.copy;
}

@end

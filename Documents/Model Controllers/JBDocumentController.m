//
//  JBDocumentController.m
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBDocumentController.h"
#import "JBDocument.h"


@interface JBDocumentController () {
    NSMutableArray *_documents;
}

- (void)addMockData;

@end


@implementation JBDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
        [self addMockData]; // TODO: Remove this; testing only
    }
    return self;
}

#pragma mark - CRUD

- (NSArray *)documents
{
    return [_documents copy];
}

- (void)createDocumentWithTitle:(NSString *)title
                           body:(NSString *)body
{
    JBDocument *doc = [[JBDocument alloc] initWithTitle:title body:body];
    [_documents addObject:doc];
}

- (void)updateDocument:(JBDocument *)document
          withNewTitle:(NSString *)newTitle
                  body:(NSString *)newBody
{
    document.title = newTitle;
    document.body = newBody;
}

- (void)moveDocumentAtIndex:(NSUInteger)oldIndex
                         to:(NSUInteger)newIndex
{
    JBDocument *doc = _documents[oldIndex];
    [_documents removeObjectAtIndex:oldIndex];
    [_documents insertObject:doc atIndex:newIndex];
}

- (void)deleteDocument:(JBDocument *)document
{
    [_documents removeObject:document];
}

- (void)deleteDocumentAtIndex:(NSUInteger)index
{
    [_documents removeObjectAtIndex:index];
}

#pragma mark - Private methods

- (void)addMockData
{
    NSArray *mockDocs = @[
        [[JBDocument alloc] initWithTitle:@"My document"
                                     body:@"Hello there! This is my document.\n\nI'm going to need to count manually how many words it has, which is a bit of a bummer, but ah well."], // 28 words?
        // I realize new I could have just copied it into an online word counter thingy...
        [[JBDocument alloc] initWithTitle:@"Another doc"
                                     body:@"This is a much shorter document."] // 6 words
    ];
    [_documents addObjectsFromArray:mockDocs];
}

@end

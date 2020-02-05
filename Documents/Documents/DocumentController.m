//
//  DocumentController.m
//  Documents
//
//  Created by Joel Groomer on 2/4/20.
//  Copyright © 2020 Julltron. All rights reserved.
//

#import "DocumentController.h"
#import "Document.h"

@interface DocumentController ()

@property (nonatomic) NSMutableArray *internalDocuments;

@end

@implementation DocumentController

- (instancetype)init
{
    if (self = [super init]) {
        _documents = [[NSArray alloc] init];
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    
    return self;
}

#pragma mark - Accessor
- (NSArray *)documents
{
    return _internalDocuments.copy;
}

#pragma mark - Add, Update, Delete

- (void)addDocument:(Document *)aDocument
{
    [self.internalDocuments addObject:aDocument];
}

- (void)delDocument:(Document *)aDocument
{
    NSUInteger i = [self.internalDocuments indexOfObject:aDocument];
    if (i) {
        [self.internalDocuments removeObjectAtIndex:i];
    }
}

- (BOOL)updateDocument:(Document *)aDocument withTitle:(NSString *)newTitle withBody:(NSString *)newBody
{
    NSUInteger i = [self.internalDocuments indexOfObject:aDocument];
    if (i) {
        Document *newDocument = [[Document alloc] initWithTitle:newTitle body:newBody];
        [self.internalDocuments replaceObjectAtIndex:i withObject:newDocument];
        return YES;
    } else {
        return NO;
    }
}

@end

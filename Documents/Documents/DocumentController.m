//
//  DocumentController.m
//  Documents
//
//  Created by Bobby Keffury on 2/5/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "DocumentController.h"
#import "Document.h"

@interface DocumentController ()

@property (nonatomic) NSMutableArray<Document *> *internalDocuments;

@end

@implementation DocumentController

- (instancetype)init
{
    if (self = [super init]) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addDocument:(Document *)aDocument
{
    [_internalDocuments addObject:aDocument];
}

- (void)updateDocument:(Document *)aDocument
{
    //Update the document
}

- (void)removeDocument:(Document *)aDocument
{
    [_internalDocuments removeObject:aDocument];
}

- (NSArray<Document *> *)documents
{
    return _internalDocuments.copy;
}

@end

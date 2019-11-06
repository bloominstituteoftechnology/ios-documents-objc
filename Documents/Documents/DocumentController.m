//
//  DocumentController.m
//  Documents
//
//  Created by Michael Stoffer on 11/5/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
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
    [self.internalDocuments addObject:aDocument];
}

- (void)removeDocument:(Document *)aDocument
{
    [self.internalDocuments removeObject:aDocument];
}

- (NSArray<Document *> *)documents
{
    return [self.internalDocuments copy];
}

@end

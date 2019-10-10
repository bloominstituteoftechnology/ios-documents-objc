//
//  MJRDocumentController.m
//  Documents-ObjectiveC
//
//  Created by Marlon Raskin on 10/9/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRDocumentController.h"
#import "MJRDocument.h"

@interface MJRDocumentController() {
    NSMutableArray *_documents;
}

@property (readonly) NSMutableArray *internalDocuments;


@end

@implementation MJRDocumentController

- (instancetype)initWithDocuments:(NSArray *)documents {
    if (self = [super init]) {
        _documents = [@[] mutableCopy];
    }
    return self;
}

- (NSMutableArray *)internalDocuments {
    return (NSMutableArray *)self.documents;
}

- (void)createDocument:(MJRDocument *)document {
    [self.internalDocuments addObject:document];
}

- (void)deleteDocument:(MJRDocument *)document {
    [self.internalDocuments removeObject:document];
}

@end

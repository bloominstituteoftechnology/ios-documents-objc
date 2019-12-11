//
//  GIPDocumentController.m
//  Documents-Objc
//
//  Created by Gi Pyo Kim on 12/11/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPDocumentController.h"

@interface GIPDocumentController()

@property NSMutableArray *internalDocuments;

@end

@implementation GIPDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (GIPDocument *)documents {
    return [self.internalDocuments copy];
}

- (void)addDocument:(GIPDocument *)document {
     [self.internalDocuments addObject:document];
}

- (void)updateDocument:(GIPDocument *)document index:(NSUInteger)index{
    [self.internalDocuments replaceObjectAtIndex:index withObject:document];
}

- (void)removeDocument:(GIPDocument *)document {
    [self.internalDocuments removeObject:document];
}

@end

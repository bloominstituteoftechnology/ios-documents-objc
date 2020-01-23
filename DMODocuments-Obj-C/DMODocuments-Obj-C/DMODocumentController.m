//
//  DMODocumentController.m
//  DMODocuments-Obj-C
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import "DMODocumentController.h"
#import "DMODocument.h"

@interface DMODocumentController() {
    
}

@property (nonatomic) NSMutableArray *internalDocuments;

@end

@implementation DMODocumentController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)documents {
    return [self.internalDocuments copy];
}

- (void)addDocument:(DMODocument *)document {
    [self.internalDocuments addObject:document];
}

- (void)removeDocument:(DMODocument *)document {
    [self.internalDocuments removeObject:document];
}

- (void)updateDocument:(DMODocument *)document {
    NSUInteger index = [self.internalDocuments indexOfObject:document];
    
    [self.internalDocuments replaceObjectAtIndex:index withObject:document];
}






@end

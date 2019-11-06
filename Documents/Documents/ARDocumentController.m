//
//  ARDocumentController.m
//  Documents
//
//  Created by Alex Rhodes on 11/6/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

#import "ARDocumentController.h"


@interface ARDocumentController ()

@property (nonatomic, copy) NSMutableArray *internalDocuments;

@end

@implementation ARDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocumentWithTitle:(NSString *)title body:(NSString *)body {
    ARDocument *document = [[ARDocument alloc] initWithTitle:title body:body];
    [self.internalDocuments addObject:document];
}

- (void) updateDocumentWith:(ARDocument *)document title:(NSString *)title body:(NSString *)body {
    document.title = title;
    document.body = body;
    
}

- (void)deleteDocument:(ARDocument *)document {
    [self.internalDocuments removeObject:document];

}

- (NSArray *)documents {
    return self.internalDocuments;
}

@end

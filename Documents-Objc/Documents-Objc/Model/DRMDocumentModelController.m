//
//  DRMDocumentModelController.m
//  Documents-Objc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "DRMDocumentModelController.h"

@implementation DRMDocumentModelController

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocumentWithTitle: (NSString *)title andBodyText: (NSString *)bodyText {
    DRMDocument *newDocument = [[DRMDocument alloc] initWithTitle: title andBodyText: bodyText];
    if (newDocument) {
        [_documents addObject: newDocument];
    }
}

- (void)updateDocument: (DRMDocument *)document withTitle: (NSString *)title andBodyText: (NSString *)bodyText {
    if (title != document.title) {
        [document setTitle: title];
    }
    
    if (bodyText != document.bodyText) {
        [document setBodyText: bodyText];
    }
}

- (void)deleteDocument: (DRMDocument *)document {
    [_documents removeObject: document];
}

@end

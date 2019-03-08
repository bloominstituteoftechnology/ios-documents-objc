//
//  DocumentController.m
//  Documents Obj-C
//
//  Created by Ivan Caldwell on 3/7/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//


#import "DocumentController.h"

@implementation DocumentController

- (instancetype)init {
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocument: (NSString *)title text: (NSString *)text {
    Document *document = [[Document alloc] initWithTitle: title text: text];
    if (document) {
        [_documents addObject: document];
    }
}

- (void)updateDocument: (Document *)document title: (NSString *)title text: (NSString *)text {
    if (title != document.title) {
        [document setTitle: title];
    }
    if (text != document.text) {
        [document setText: text];
    }
}

- (void)deleteDocument: (Document *)document {
    [_documents removeObject: document];
}
@end

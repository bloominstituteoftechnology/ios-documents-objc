//
//  PCYDocumentController.m
//  DocumentsObj-C
//
//  Created by Paul Yi on 4/3/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYDocumentController.h"
#import "PCYDocument.h"


@interface PCYDocumentController () {
    NSMutableArray *_documents;
}

@end

@implementation PCYDocumentController

- (instancetype)init {
    if (self = [super init]) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray<PCYDocument *> *)documents {
    return _documents.copy;
}

- (void)createDocumentWithTitle:(NSString *)title text:(NSString *)text {
    PCYDocument *document = [[PCYDocument alloc] initWithTitle:title text:text];
    [_documents addObject:document];
}

- (void)updateDocument:(PCYDocument *)document title:(NSString *)title text:(NSString *)text {
    document.title = title;
    document.text = text;
}

- (void)deleteDocument:(PCYDocument *)document {
    [_documents removeObjectIdenticalTo:document];
}

@end

//
//  JBDocumentController.m
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBDocumentController.h"
#import "JBDocument.h"

@interface JBDocumentController () {
    NSMutableArray *_documents;
}

@end

@implementation JBDocumentController

- (instancetype)init {
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)documents {
    return [_documents copy];
}

- (void)createDocumentWithTitle:(NSString *)title
                           body:(NSString *)body {
    JBDocument *doc = [[JBDocument alloc] initWithTitle:title body:body];
    [_documents addObject:doc];
}

- (void)updateDocument:(JBDocument *)document
          withNewTitle:(NSString *)newTitle
                  body:(NSString *)newBody {
    document.title = newTitle;
    document.body = newBody;
}

- (void)deleteDocument:(JBDocument *)document {
    [_documents removeObject:document];
}

@end

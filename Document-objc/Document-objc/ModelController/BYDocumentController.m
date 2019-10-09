//
//  BYDocumentController.m
//  Document-objc
//
//  Created by Bradley Yin on 10/9/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYDocumentController.h"
#import "BYDocument.h"

@implementation BYDocumentController

- (instancetype)init {
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocument:(BYDocument *)document {
    [self.documents addObject:document];
}

- (void)updateDocument:(BYDocument *)document title:(NSString *)title body:(NSString *)body {
    NSUInteger index = [self.documents indexOfObject:document];
    BYDocument *doc = self.documents[index];
    doc.title = title;
    doc.bodyText = body;
}

- (void)removeDoument:(BYDocument *)document {
    [self.documents removeObject:document];
}

@end

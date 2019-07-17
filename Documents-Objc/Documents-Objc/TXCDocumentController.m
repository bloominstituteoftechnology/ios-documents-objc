//
//  TXCDocumentController.m
//  Documents-Objc
//
//  Created by Thomas Cacciatore on 7/17/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCDocumentController.h"

@interface TXCDocumentController () {
    
}
@property NSMutableArray *internalDocuments;

@end


@implementation TXCDocumentController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
        [self addTestData];
    }
    return self;
}

- (void)addTestData {
    TXCDocument *document1 = [[TXCDocument alloc] initWithTitle:@"Resume" text:@"This shows my work experience"];
    TXCDocument *document2 = [[TXCDocument alloc] initWithTitle:@"Diploma" text:@"This shows my degree from college"];
    [self addDocument:document1];
    [self addDocument:document2];
}
- (NSArray *)documents {
    return [_internalDocuments copy];
}

- (void)addDocument:(TXCDocument *)document {
    [_internalDocuments addObject:document];
}

- (void)removeDocument:(TXCDocument *)document {
    [_internalDocuments removeObject:document];
}

- (void)updateDocument:(TXCDocument *)document title:(NSString *)title text:(NSString *)text {
    document.title = title;
    document.text = text;
}

@end

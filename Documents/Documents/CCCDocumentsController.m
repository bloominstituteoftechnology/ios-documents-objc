//
//  CCCDocumentsController.m
//  Documents
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
//

#import "CCCDocumentsController.h"
#import "NSString+CCCDocWordCount.h"

@interface CCCDocumentsController ()

@property (nonatomic) NSMutableArray *internalDocuments;

@end

@implementation CCCDocumentsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addDocument:(CCCDocument *)document {
    [[self internalDocuments] addObject: document];
}

- (void)removeDocument:(CCCDocument *)document {
    [[self internalDocuments] removeObject: document];
}

- (void)updateDocument:(CCCDocument *)document withTitle:(NSString *)title andText:(NSString *)text {
    document.title = title;
    document.text = text;
    document.wordCount = [text ccc_wordCount];
}

@synthesize documents = _documents;

- (void)setDocuments:(NSArray *)documents {
    _documents = [self internalDocuments];
}

- (NSArray *)documents {
    return [self internalDocuments];
}


@end

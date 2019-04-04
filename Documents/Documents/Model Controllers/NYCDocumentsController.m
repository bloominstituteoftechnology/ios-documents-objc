//
//  NYCDocumentsController.m
//  Documents
//
//  Created by Nathanael Youngren on 4/3/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCDocumentsController.h"
#import "NSString+NYCWordCount.h"

@interface NYCDocumentsController ()

@property (nonatomic) NSMutableArray *internalDocuments;

@end

@implementation NYCDocumentsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addDocument:(NYCDocument *)document {
    [[self internalDocuments] addObject: document];
}

- (void)removeDocument:(NYCDocument *)document {
    [[self internalDocuments] removeObject: document];
}

- (void)updateDocument:(NYCDocument *)document withTitle:(NSString *)title andText:(NSString *)text {
    document.title = title;
    document.text = text;
    document.wordCount = [text nyc_wordCount];
}

@synthesize documents = _documents;

- (void)setDocuments:(NSArray *)documents {
    _documents = [self internalDocuments];
}

- (NSArray *)documents {
    return [self internalDocuments];
}


@end

//
//  MJRDocumentController.m
//  Documents-ObjectiveC
//
//  Created by Marlon Raskin on 10/9/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRDocumentController.h"
#import "MJRDocument.h"

@interface MJRDocumentController() {
    NSMutableArray *_documents;
}

@property (readonly) NSMutableArray *internalDocuments;

@end

@implementation MJRDocumentController

- (instancetype)init {
    if (self = [super init]) {
        _documents = [@[] mutableCopy];
    }
    return self;
}

- (void)createDocumentWithTitle:(NSString *)title andText:(NSString *)text {
    MJRDocument *document = [[MJRDocument alloc] initWithTitle:title text:text];
    [self.documents addObject:document];
}

- (void)addDocument:(MJRDocument *)document {
    [self.documents addObject:document];
}

- (void)updateDocument:(MJRDocument *)document withTitle:(NSString *)title andText:(NSString *)text {
    document.title = title;
    document.text = text;
}

- (MJRDocument *)documentAtIndex:(NSUInteger)index {
    return [self.documents objectAtIndex:index];
}

- (void)deleteDocument:(MJRDocument *)document {
    [self.documents removeObject:document];
}

- (NSUInteger)count {
    return [self.documents count];
}

@end

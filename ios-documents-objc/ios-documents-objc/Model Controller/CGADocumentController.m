//
//  CGADocumentController.m
//  ios-documents-objc
//
//  Created by Conner on 10/3/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import "CGADocumentController.h"
#import "CGADocument.h"

@implementation CGADocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocumentWithTitle:(NSString *)title text:(NSString *)text {
    CGADocument *document = [[CGADocument alloc] initWithTitle:title text:text];
    [[self documents] addObject:document];
}

- (void)updateDocument:(CGADocument *)document title:(NSString *)title text:(NSString *)text {
    CGADocument *tempDoc;
    tempDoc.title = title;
    tempDoc.text = text;
    
    NSUInteger index = [[self documents] indexOfObject:document];
    [[self documents] replaceObjectAtIndex:index withObject:tempDoc];
}

- (void)deleteDocument:(CGADocument *)document {
    NSUInteger index = [[self documents] indexOfObject:document];
    [[self documents] removeObjectAtIndex:index];
}

@end

//
//  ABCDocumentController.m
//  Documents
//
//  Created by Austin Cole on 2/27/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import "ABCDocumentController.h"

@implementation ABCDocumentController

- (instancetype)init
{
    self = [super init];
    if (self != nil) {
        _documentsArray = @[];
    }
    return self;
}

- (void)createDocument:(NSString *)title withBody:(NSString *)body {
    ABCDocument *newDocument = [[ABCDocument alloc] initWithTitle:title andWith:body];
    [newDocument setWordCount:body];
    [_documentsArray arrayByAddingObject: newDocument];
    }

- (void)updateDocument:(ABCDocument *)document withTitle:(NSString *)title withBody:(NSString *)body {
    //Initialize a new ABCDocument
    ABCDocument *updatedDocument = [[ABCDocument alloc] initWithTitle:title andWith:body];
    [updatedDocument setWordCount:body];
    //Find the index of the existing document that was passed into the method as an argument
    NSUInteger index = [_documentsArray indexOfObject:document];
    //Replace the existing document with the newly updated document
    [_documentsArray  replaceObjectAtIndex:index withObject: updatedDocument];
}

- (void)deleteDocument:(ABCDocument *)document {
    [_documentsArray removeObject:document];
}

@end

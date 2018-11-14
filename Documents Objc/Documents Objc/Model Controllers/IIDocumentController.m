//
//  IIDocumentController.m
//  Documents Objc
//
//  Created by Ilgar Ilyasov on 11/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "IIDocumentController.h"
#import "IIDocument.h"

@implementation IIDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createWithTitle:(NSString *)title body:(NSString *)body
{
    IIDocument *document = [[IIDocument alloc] initWithTitle:title body:body];
    [_documents addObject:document];
}

- (void)updateDocument:(IIDocument *)document title:(NSString *)title body:(NSString *)body
{
    int index = (int)[_documents indexOfObject:document];
    [_documents removeObjectAtIndex:index];
    
    IIDocument *newDocument = [[IIDocument alloc] initWithTitle:title body:body];
    [_documents addObject:newDocument];
}

- (void)deleteDocument:(IIDocument *)document
{
    int index = (int)[_documents indexOfObject:document];
    [_documents removeObjectAtIndex:index];
}

@end

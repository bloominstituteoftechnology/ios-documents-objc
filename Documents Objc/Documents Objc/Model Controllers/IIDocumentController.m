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
        self.documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createWithTitle:(NSString *)title body:(NSString *)body
{
    IIDocument *document = [[IIDocument alloc] initWithTitle:title body:body];
    [self.documents addObject:document];
}

- (void)updateDocument:(IIDocument *)document title:(NSString *)title body:(NSString *)body
{
    int index = (int)[self.documents indexOfObject:document];
    IIDocument *newDocument = [[IIDocument alloc] initWithTitle:title body:body];
    [self.documents replaceObjectAtIndex:index withObject:newDocument];
    
//    [document setDocumentTitle:title];
//    [document setDocumentBody:body];
}

- (void)deleteDocument:(IIDocument *)document
{
    int index = (int)[_documents indexOfObject:document];
    [self.documents removeObjectAtIndex:index];
}

@end

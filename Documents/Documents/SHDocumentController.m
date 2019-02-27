//
//  SHDocumentController.m
//  Documents
//
//  Created by Sean Hendrix on 2/27/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import "SHDocumentController.h"

@implementation SHDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocumentWithTitle:(NSString *)title body:(NSString *)body
{
    MUDocument *document =[[[MUDocument alloc] init] initWithTitle:title body:body];
    [self.documents addObject:document];
}

- (void)updateDocumentWithDocument:(MUDocument *)document title:(NSString *)title body:(NSString *)body
{
    unsigned long index = [self.documents indexOfObject:document];
    MUDocument *existingDocument = self.documents[index];
    [existingDocument setTitle: title];
    [existingDocument setBody: body];
    
}

- (void)deleteDocumentWIthDocument:(MUDocument *)document
{
    unsigned long index = [self.documents indexOfObject:document];
    [self.documents removeObjectAtIndex:index];
}

@end

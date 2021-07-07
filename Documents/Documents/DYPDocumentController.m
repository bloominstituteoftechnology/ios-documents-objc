//
//  DYPDocumentController.m
//  Documents
//
//  Created by Daniela Parra on 11/14/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DYPDocumentController.h"
#import "DYPDocument.h"

@interface DYPDocumentController ()

@property (nonatomic, readwrite) NSMutableArray *documents;

@end

@implementation DYPDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (DYPDocument *)createDocumentWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    DYPDocument *document = [[DYPDocument alloc] initWithTitle:title bodyText:bodyText];
    [self.documents addObject:document];
    return document;
}

- (void)updateDocument:(DYPDocument *)document title:(NSString *)title bodyText:(NSString *)bodyText
{
    [document setTitle:title];
    [document setBodyText:bodyText];
}

- (void)deleteDocument:(DYPDocument *)document
{
    [self.documents removeObject:document];
}

@end

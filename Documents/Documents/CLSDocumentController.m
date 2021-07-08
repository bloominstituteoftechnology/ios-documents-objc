//
//  CLSDocumentController.m
//  Documents
//
//  Created by Carolyn Lea on 10/3/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import "CLSDocumentController.h"

@interface CLSDocumentController ()

@property CLSDocument *document;

@end

@implementation CLSDocumentController

-(instancetype)init
{
    self = [super init];
    if (self)
    {
        _document = [[CLSDocument alloc] init];
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)createDocument:(NSString *)title text:(NSString *)text
{
    _document = [_document initWithTitle:title text:text];
    [_documents addObject:_document];
    [self saveDocument];
}

-(void)updateDocument:(CLSDocument *)document title:(NSString *)title text:(NSString *)text
{
    document.documentTitle = title;
    document.documentText = text;
    [self saveDocument];
}

-(void)deleteDocument:(CLSDocument *)document
{
    if (_document == document)
    {
        [_documents removeObject:_document];
    }
}

-(void)saveDocument
{
    NSLog(@"this would save if I had some code in here");
}

@end

//
//  NELDocumentController.m
//  ios-Documents-objc
//
//  Created by Nelson Gonzalez on 3/27/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

#import "NELDocumentController.h"
#import "NELDocument.h"

//EXTENSION

@interface NELDocumentController ()
//implement in normal implementation below

//this is the "real" tasks array.
@property (nonatomic) NSMutableArray *internalDocuments;

@end

@implementation NELDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        //Create an empty mutable array
        _internalDocuments = [[NSMutableArray alloc] init];
        
    }
    return self;
}


- (void)createDocumentWithTitle:(NSString *)title text:(NSString *)text
{
    NELDocument *document = [[NELDocument alloc] initWithTitle:title text:text];
    
    
    [self.internalDocuments addObject:document];
    
}


- (void)updateDocument:(NELDocument *)document withTitle:(NSString *)title text:(NSString *)text
{
    document.title = title;
    document.text = text;
}

- (void)removeDocument:(NELDocument *)document
{
    [self.internalDocuments removeObject:document];
}

- (NSArray *)documentsArray
{
    return self.internalDocuments;
}

@end

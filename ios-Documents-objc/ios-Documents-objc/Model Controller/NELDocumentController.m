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

- (void)createDocumentWithTitle:(NSString *)title text:(NSString *)text wordCount:(NSInteger)wordCount
{
    NELDocument *document = [[NELDocument alloc] initWithTitle:title text:text wordCount:wordCount];
    
    [self.internalDocuments addObject:document];
    
}

- (void)updateDocument:(NELDocument *)document withTitle:(NSString *)title text:(NSString *)text wordCount:(NSInteger)wordCount
{
    document.title = title;
    document.text = text;
    document.wordCount = wordCount;
}

- (void)removeDocument:(NELDocument *)document
{
    [self.internalDocuments removeObject:document];
}



@end

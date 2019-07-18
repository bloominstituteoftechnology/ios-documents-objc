//
//  DLJDocumentController.m
//  DocumentsApp
//
//  Created by Diante Lewis-Jolley on 7/17/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import "DLJDocumentController.h"
#import "DLJDocument.h"

@interface DLJDocumentController()


@property (nonatomic) NSMutableArray *internalDocuments;

@end


@implementation DLJDocumentController


- (instancetype)init {
    self = [super init];
    if (self != nil) {
        _internalDocuments = [[NSMutableArray alloc] init];

    }

    return self;
}


- (NSArray *)documents {
    return [self.internalDocuments copy];
}

-(void)createDocument:(NSString *)title message:(NSString *)message wordCount:(NSInteger *)wordCount {

    DLJDocument *newDocument = [[DLJDocument alloc] initWithTitle:title message:message];

    newDocument.wordCount = wordCount;
    [self.internalDocuments addObject:newDocument];
}

-(void)updateDoc:(DLJDocument *)document title:(NSString *)title message:(NSString *)message wordCount:(NSInteger *)wordCount {

    document.title = title;
    document.message = message;
    document.wordCount = wordCount;
}

-(void)deleteDocument:(DLJDocument *)document {
    [self.internalDocuments removeObject:document];
}

-(void)addDocument:(DLJDocument *)document {
    [self.internalDocuments addObject:document];
}





@end

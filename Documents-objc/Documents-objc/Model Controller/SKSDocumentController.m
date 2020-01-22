//
//  SKSDocumentController.m
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSDocumentController.h"
#import "SKSDocument.h"

@interface SKSDocumentController() {
}

@property (nonatomic) NSMutableArray *internalDocuments;

@end

@implementation SKSDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)documents {
    return [self.internalDocuments copy];
}

- (void)createDocument:(SKSDocument *)document {
    [self.internalDocuments addObject:document];
}

- (void)updateDocument:(SKSDocument *)document with:(SKSDocument *)updatedDocument {
    NSUInteger index = [self.internalDocuments indexOfObject:document];
    SKSDocument *tempDoc = self.internalDocuments[index];
    NSLog(@"%@", tempDoc.title);
    NSLog(@"%@", tempDoc.documentText);

    tempDoc.title = updatedDocument.title;
    tempDoc.documentText = updatedDocument.documentText;

    NSLog(@"%@", tempDoc.title);
    NSLog(@"%@", tempDoc.documentText);
}

- (void)deleteDocument:(SKSDocument *)document {
    [self.internalDocuments removeObject:document];
}


@end

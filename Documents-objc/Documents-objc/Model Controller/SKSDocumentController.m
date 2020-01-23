//
//  SKSDocumentController.m
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSDocumentController.h"
#import "SKSDocument.h"
#import "SKSCoreDataStack.h"
#import "Document+CoreDataClass.h"
#import "Document+SKSConvenience.h"

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

- (void)createDocument:(Document *)document {
    //[self.internalDocuments addObject:document];
    [[SKSCoreDataStack shared] saveContext:[[SKSCoreDataStack shared] mainContext]];
}

- (void)updateDocument:(Document *)document with:(Document *)updatedDocument {
//    NSUInteger index = [self.internalDocuments indexOfObject:document];
//    SKSDocument *tempDoc = self.internalDocuments[index];
//    tempDoc.title = updatedDocument.title;
//    tempDoc.documentText = updatedDocument.documentText;
    document.title = updatedDocument.title;
    document.text = updatedDocument.text;

    [[SKSCoreDataStack shared] saveContext:[[SKSCoreDataStack shared] mainContext]];
}

- (void)deleteDocument:(Document *)document {
    //[self.internalDocuments removeObject:document];
    [[[SKSCoreDataStack shared] mainContext] deleteObject:document];
    [[SKSCoreDataStack shared] saveContext:[[SKSCoreDataStack shared] mainContext]];
}


@end

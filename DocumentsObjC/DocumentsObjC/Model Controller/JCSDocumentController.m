//
//  JCSDocumentController.m
//  DocumentsObjC
//
//  Created by Lambda_School_Loaner_95 on 4/3/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSDocumentController.h"
#import "JCSDocument.h"

@interface JCSDocumentController () {
    
}
@property (nonatomic, readwrite) NSMutableArray *internalDocs;

@end

@implementation JCSDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalDocs = [[NSMutableArray alloc] init];
    }
    return self;
}

// METHODS

- (void)addNewDocument:(JCSDocument *)document {
    [self.internalDocs addObject:document];
}

- (void)updateADocument:(JCSDocument *)document title:(NSString *)title contents:(NSString *)contents wordCount:(int)wordCount {
    
    int indexPath = [self.internalDocs indexOfObject:document];
   
    [[self.internalDocs objectAtIndex:indexPath] setTitle:title];
    [[self.internalDocs objectAtIndex:indexPath] setContents:contents];
     [[self.internalDocs objectAtIndex:indexPath] setWordCount:wordCount];
    
   /* document.title = title;
    document.contents = contents;
    
    JCSDocument *updatedDocument = [self.internalDocs objectAtIndex:indexPath];*/
   
}

- (void)removeADocument:(JCSDocument *)document {
    [self.internalDocs removeObject:document];
}

- (NSArray *)documents {
    return self.internalDocs;
}

@end

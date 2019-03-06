//
//  DocumentController.m
//  Documents
//
//  Created by Madison Waters on 2/27/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import "DocumentController.h"
#import "Document.h"

@interface DocumentController ()

@property (nonatomic) NSMutableArray *internalDocuments;

@end

@implementation DocumentController

-(instancetype) init {
    self = [super init];
    
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addDocument:(Document *)document {
    [self.internalDocuments addObject:document];
}

-(void)updateDocument:(Document *)document title:(NSString *)title text:(NSString *)text {
    int index = (int)[self.documents indexOfObject:document];
    Document *newDocument = [[Document alloc] initWithTitle: title text: text];
    [self.internalDocuments replaceObjectAtIndex:index withObject:newDocument];
}

-(void)removeDocument:(Document *)document {
    [self.internalDocuments removeObject:document];
}

@end

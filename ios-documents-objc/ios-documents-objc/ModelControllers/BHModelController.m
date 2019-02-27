//
//  BHModelController.m
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import "BHModelController.h"
#import "BHDocument.h"

@implementation BHModelController


-(instancetype)init{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray<BHDocument *> alloc] init];
        
    }
    return self;
}

-(void)createDocument: (BHDocument *)document {
    [_documents addObject:document];
    
}

-(void)updateDocument: (BHDocument *)updatedDocument {
    NSUInteger j = [_documents count];
    
    for (int q = 0; q < j; q++)
    {
        BHDocument *thisObject = [_documents objectAtIndex:q];
        BOOL shouldUpdateThisObject = ([updatedDocument UUID] == [thisObject UUID]);
        if (shouldUpdateThisObject){
            [_documents removeObjectAtIndex:q];
            [_documents insertObject:updatedDocument atIndex:q];
            break;
        }
    }
}

-(void)deleteDocument: (BHDocument *)documentToDelete {
    
    [_documents removeObject:documentToDelete];
    
}

@end

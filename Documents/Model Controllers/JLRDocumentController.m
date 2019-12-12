//
//  JLRDocumentController.m
//  Documents
//
//  Created by Jesse Ruiz on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRDocumentController.h"

@interface JLRDocumentController ()

@property NSMutableArray *internalDocs;

@end

@implementation JLRDocumentController

- (instancetype)init {
    if (self = [super init]) {
        _internalDocs = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDoc:(JLRDocument *)document {
    [self.internalDocs addObject:document];
}

//- (void)updateDoc:(JLRDocument *)document {
//    [self.internalDocs  ]
//}


- (void)deleteDoc:(JLRDocument *)document {
    [self.internalDocs removeObject:document];
}


@end

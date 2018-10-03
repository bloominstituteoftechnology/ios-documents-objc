//
//  CGADocumentController.m
//  ios-documents-objc
//
//  Created by Conner on 10/3/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import "CGADocumentController.h"

@implementation CGADocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

@end

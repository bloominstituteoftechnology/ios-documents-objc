//
//  VVSDocumentController.m
//  Documents Obj-C
//
//  Created by Vici Shaweddy on 2/4/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSDocumentController.h"

@interface VVSDocumentController ()

@property (nonatomic) NSMutableArray<VVSDocument *> *internalDocument;

@end

@implementation VVSDocumentController

- (instancetype)init
{
    if (self = [super init]) {
        _internalDocument = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addDocument:(VVSDocument *)aDocument
{
    [_internalDocument addObject:aDocument];
}

- (void)removeDocument:(VVSDocument *)aDocument
{
    [_internalDocument removeObject:aDocument];
}

- (void)updateDocument:(VVSDocument *)aDocument withIndex:(NSUInteger)index
{
    [_internalDocument replaceObjectAtIndex:index withObject:aDocument];
}

@end

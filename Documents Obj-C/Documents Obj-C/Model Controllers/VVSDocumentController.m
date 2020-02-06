//
//  VVSDocumentController.m
//  Documents Obj-C
//
//  Created by Vici Shaweddy on 2/4/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSDocumentController.h"
#import "NSString+VVSWordCount.h"

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

- (void)updateDocument:(VVSDocument *)aDocument withTitle:(NSString *)title notes:(NSString *)someNotes
{
    NSUInteger index = [_internalDocument indexOfObject:aDocument];
    aDocument.title = title;
    aDocument.notes = someNotes;
    aDocument.wordCount = [someNotes wordCount];
    [_internalDocument replaceObjectAtIndex:index withObject:aDocument];
}

@synthesize documents = _documents;

-(void)setDocuments:(NSArray<VVSDocument *> *)documents {
    _documents= [self internalDocument];
}

- (NSArray *)documents {
    return _internalDocument.copy;
}

@end

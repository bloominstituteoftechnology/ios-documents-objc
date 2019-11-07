//
//  JLCModelController.m
//  iOS-Documents-objc
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import "JLCDocumentController.h"
#import "JLCDocument.h"

@interface JLCDocumentController ()

@property (nonatomic, readwrite) NSMutableArray *internalDocuments;

@end

@implementation JLCDocumentController

static int _totalDocumentsCreated = 0;

+ (int)totalDocumentsCreated {
    return _totalDocumentsCreated;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocumentWithTitle:(NSString *)title text:(NSString *)text {
    JLCDocument *document = [[JLCDocument alloc] init];
    document.title = title;
    document.text = text;
    [self.internalDocuments addObject:document];
    _totalDocumentsCreated++;
}

- (void)deleteDocument:(JLCDocument *)document {
    [self.internalDocuments removeObject:document];
    _totalDocumentsCreated--;
}

@end

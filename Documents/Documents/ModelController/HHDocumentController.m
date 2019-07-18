//
//  HHDocumentController.m
//  Documents
//
//  Created by Hayden Hastings on 7/17/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import "HHDocumentController.h"
#import "HHDocument.h"

@interface HHDocumentController ()

@property NSMutableArray *internalDocuments;

@end

@implementation HHDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)documentsArray {
    return self.internalDocuments;
}

- (void)createDocumentWithTitle:(NSString *)title
                           text:(NSString *)text {
    HHDocument *document = [[HHDocument alloc] initWithTitle:title text:text];
    [self.internalDocuments addObject:document];
}

- (void)updateDocument:(HHDocument *)document withTitle:(NSString *)title
                  text:(NSString *)text {
    document.title = title;
    document.text = text;
}

- (void)removeDocument:(HHDocument *)document {
    [self.internalDocuments removeObject:document];
}

@end

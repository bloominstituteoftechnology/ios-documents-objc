//
//  MJRDocumentController.m
//  Documents
//
//  Created by Moses Robinson on 3/28/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import "MJRDocumentController.h"
#import "MJRDocument.h"

@interface MJRDocumentController ()

@property (nonatomic) NSMutableArray *internalDocuments;

@end

@implementation MJRDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {

        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)createDocWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    MJRDocument *document = [[MJRDocument alloc] initWithTitle:title bodyText:bodyText];
    
    [self.internalDocuments addObject:document];
}

-(void)updateDoc:(MJRDocument *)document title:(NSString *)title bodyText:(NSString *)bodyText
{
    document.title = title;
    document.bodyText = bodyText;
}

-(void)removeDoc:(MJRDocument *)document
{
    [self.internalDocuments removeObject:document];
}

- (NSArray *)documents
{
    return self.internalDocuments;
}

@end

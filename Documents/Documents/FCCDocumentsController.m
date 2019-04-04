//
//  FCCDocumentsController.m
//  Documents
//
//  Created by Lambda_School_Loaner_34 on 4/4/19.
//  Copyright © 2019 Frulwinn. All rights reserved.
//

#import "FCCDocumentsController.h"
#import "FCCDocuments.h"

@interface FCCDocumentsController ()

@property (nonatomic) NSMutableArray *internalDocuments;

@end


@implementation FCCDocumentsController

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
    FCCDocuments *document = [[FCCDocuments alloc] initWithTitle:title bodyText:bodyText];
    
    [self.internalDocuments addObject:document];
}

-(void)updateDoc:(FCCDocuments *)document title:(NSString *)title bodyText:(NSString *)bodyText
{
    document.title = title;
    document.bodyText = bodyText;
}

-(void)removeDoc:(FCCDocuments *)document
{
    [self.internalDocuments removeObject:document];
}

- (NSArray *)documents
{
    return self.internalDocuments;
}

@end

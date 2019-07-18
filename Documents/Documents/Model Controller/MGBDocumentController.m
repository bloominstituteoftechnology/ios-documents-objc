//
//  MGBDocumentController.m
//  Documents
//
//  Created by Mitchell Budge on 7/17/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MGBDocumentController.h"

@implementation MGBDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void)createDocumentWithTitle:(NSString *)title andText:(NSString *)text
{
    MGBDocument *newDocument = [[MGBDocument alloc]initWithTitle:title text:text];
    [self.documents addObject:newDocument];
}

- (void)updateDocument:(MGBDocument *)document withTitle:(NSString *)title andText:(NSString *)text
{
    document.title = title;
    document.text = text;
}

-(void)deleteDocument:(MGBDocument *)document
{
    [self.documents removeObject:document];
}

@end

//
//  LMSDocumentController.m
//  Documents ObjC
//
//  Created by Lisa Sampson on 2/27/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import "LMSDocumentController.h"
#import "LMSDocument.h"

@implementation LMSDocumentController

-(instancetype)init {
    self = [super init];
    
    if (self != nil) {
        _documents = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(void)createWithTitle:(NSString *)title andBody:(NSString *)body {
    LMSDocument *document = [[LMSDocument alloc] initWithTitle:title andBody:body];
    [self.documents addObject:document];
}

-(void)updateDoc:(LMSDocument *)document withTitle:(NSString *)title andBody:(NSString *)body {
    NSUInteger index = [[self documents] indexOfObject:document];
    [[self.documents objectAtIndex:index] setTitle:title];
    [[self.documents objectAtIndex:index] setBody:body];
}

-(void)deleteDoc:(LMSDocument *)document {
    [self.documents removeObject:document];
}

@end

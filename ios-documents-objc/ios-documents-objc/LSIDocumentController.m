//
//  LSIDocumentController.m
//  ios-documents-objc
//
//  Created by Lambda_School_Loaner_214 on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIDocumentController.h"

@interface LSIDocumentController ()

@property (nonatomic, copy) NSMutableArray *internalDocuments;

@end

@implementation LSIDocumentController
- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)createDocWithTitle:(NSString *)title body:(NSString *)body{
    LSIDocument *document = [[LSIDocument alloc]initWithTitle:title body:body];
    [self.internalDocuments addObject:document];
}

-(void)updateDoc:(LSIDocument *)document title:(NSString *)title body:(NSString *)body{
    document.title = title;
    document.body = body;
}

-(void)deleteDoc:(LSIDocument *)docuemnt{
    [self.internalDocuments removeObject:docuemnt];
}

- (NSArray *)documents {
    return self.internalDocuments;
}

@end

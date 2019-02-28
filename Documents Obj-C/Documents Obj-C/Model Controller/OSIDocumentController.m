//
//  OSIDocumentController.m
//  Documents Obj-C
//
//  Created by Sergey Osipyan on 2/27/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import "OSIDocumentController.h"
#import "OSIDocument.h"

@implementation OSIDocumentController

-(instancetype)init
{
    
    self = [super init];
    if (self) {
        
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}



-(void)createDocument:(NSString *)title withBody:(NSString *)text {
    OSIDocument *newDocument = [[OSIDocument alloc] initWithName:text title:title];
    [newDocument setCount:text];
    [_documents addObject: newDocument];
}

- (void)updateDocument:(id)document withTitle:(NSString *)title bodyText:(NSString *)bodyText {
    OSIDocument *updateDocument = [[OSIDocument alloc] initWithName:bodyText title:title];
    [updateDocument setCount:bodyText];
    NSUInteger index = [_documents indexOfObject:document];
    [_documents replaceObjectAtIndex:index withObject:updateDocument];
}
-(void)deleteDocument:(id)document {
    [_documents removeObject:document];
}

@end

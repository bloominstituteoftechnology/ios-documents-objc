//
//  LSIDocumentController.m
//  Documents
//
//  Created by Isaac Lyons on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIDocumentController.h"
#import "LSIDocument.h"

@implementation LSIDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] initWithArray:@[]];
    }
    return self;
}

- (void)addDocumentWithTitle:(NSString *)title text:(NSString *)text {
    LSIDocument *document = [[LSIDocument alloc] initWithTitle:title text:text];
    [self.documents addObject:document];
}

- (void)updateDocument:(LSIDocument *)document title:(NSString *)title text:(NSString *)text {
    [document setTitle:title];
    [document setText:text];
}

- (void)deleteDocument:(LSIDocument *)document {
    [self.documents removeObject:document];
}

@end

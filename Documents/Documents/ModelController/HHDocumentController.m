//
//  HHDocumentController.m
//  Documents
//
//  Created by Hayden Hastings on 7/17/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import "HHDocumentController.h"

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

@end

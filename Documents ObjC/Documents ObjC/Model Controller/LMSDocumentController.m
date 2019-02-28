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

@end

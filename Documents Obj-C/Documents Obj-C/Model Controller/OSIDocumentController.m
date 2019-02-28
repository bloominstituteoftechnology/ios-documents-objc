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
        
        _documents = @[];
    }
    return self;
}



- (void)create:(NSString *)title text:(NSString *)text {
    
    
    
}

@end

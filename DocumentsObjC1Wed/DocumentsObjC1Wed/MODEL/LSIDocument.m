//
//  LSIDocument.m
//  DocumentsObjC1Wed
//
//  Created by John Pitts on 7/17/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//

#import "LSIDocument.h"

@implementation LSIDocument

- (instancetype)initWithTitle:(NSString *)title
                         body:(NSString *)body
                numberOfWords:(int *)numberOfWords {
    if (self = [super init]) {
        
        _title = title;
        _body = body;
        _numberOfWords = numberOfWords;
    }
    return self;
    
    
}

@end

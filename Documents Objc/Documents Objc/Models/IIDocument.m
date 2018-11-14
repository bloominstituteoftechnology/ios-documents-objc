//
//  IIDocument.m
//  Documents Objc
//
//  Created by Ilgar Ilyasov on 11/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "IIDocument.h"
#import "NSString+WordCount.h"

@implementation IIDocument

- (instancetype)initWithTitle:(NSString *)title body:(NSString *)body
{
    self = [super init];
    if (self) {
        _documentTitle = [title copy];
        _documentBody = [body copy];
    }
    return self;
}

- (int)wordCount
{
    return [_documentBody wordCount];
}

@end

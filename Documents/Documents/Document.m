//
//  Document.m
//  Documents
//
//  Created by Joel Groomer on 2/4/20.
//  Copyright © 2020 Julltron. All rights reserved.
//

#import "Document.h"
#import "NSString+WordCount.h"

@implementation Document

- (instancetype)initWithTitle:(NSString *)aTitle body:(NSString *)theBody
{
    if (self = [super init]) {
        _title = aTitle;
        _body = theBody;
    }
    
    return self;
}

- (int)wordCount
{
    return _body.wordCount;
}

@end

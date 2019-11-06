//
//  Document.m
//  Documents
//
//  Created by Michael Stoffer on 11/5/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import "Document.h"
#import "NSString+WordCount.h"

@implementation Document

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text
{
    if (self = [super init]) {
        _title = title.copy;
        _text = text.copy;
    }
    return self;
}

@end

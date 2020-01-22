//
//  JBDocument.m
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBDocument.h"
#import "NSString+JBWordCount.h"


@implementation JBDocument

- (instancetype)initWithTitle:(NSString *)title
                         body:(NSString *)body
{
    self = [super init];
    if (self)
    {
        _title = title;
        _body = body;
    }
    return self;
}

- (NSUInteger)wordCount
{
    return self.body.jbWordCount;
}

- (NSString *)formattedWordCount
{
    return self.body.jbFormattedWordCount;
}

@end

//
//  DYPDocument.m
//  Documents
//
//  Created by Daniela Parra on 11/14/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DYPDocument.h"
#import "NSString+WordCount.h"

@implementation DYPDocument

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
    }
    return self;
}

- (int)wordCount
{
    return [self.bodyText wordCount];
}

@end

//
//  MJRDocument.m
//  Documents
//
//  Created by Moses Robinson on 3/27/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import "MJRDocument.h"
#import "NSString+WordCount.h"

@implementation MJRDocument

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    self = [super init];
    
    if (self != nil) {
        _title = title;
        _bodyText = bodyText;
    }
    return self;
}

- (NSUInteger)wordCount
{
    return [self.bodyText wordCount];
}

@end

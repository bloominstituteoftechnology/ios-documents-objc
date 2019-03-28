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

- (instancetype)initWithTitle:(NSString *)title document:(NSString *)document
{
    self = [super init];
    
    if (self != nil) {
        _title = title;
        _document = document;
    }
    return self;
}

- (NSUInteger)wordCount
{
    return [self.document wordCount];
}

@end

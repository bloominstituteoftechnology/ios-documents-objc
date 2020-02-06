//
//  Document.m
//  Documents
//
//  Created by Bobby Keffury on 2/5/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "Document.h"
#import "NSString+WordCount.h"

@implementation Document

+ (instancetype)documentWithTitle:(NSString *)aTitle text:(NSString *)someText
{
    return [[self alloc] initWithTitle:aTitle text:someText];
}

- (instancetype)initWithTitle:(NSString *)aTitle text:(NSString *)someText
{
    return [self initWithTitle:aTitle text:someText];
}


//MARK: - Accessors

@synthesize wordCount = _wordCount;

- (NSUInteger)wordCount
{
    return [self.text checkWordCount];
}

@end

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

- (instancetype)initWithTitle:(NSString *)aTitle text:(NSString *)someText
{
    return [self initWithTitle:aTitle text:someText];
}


//MARK: - Accessors

@synthesize wordCount = _wordCount;

// Implement wordCount method

@end

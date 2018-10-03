//
//  CLSDocument.m
//  Documents
//
//  Created by Carolyn Lea on 10/3/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import "CLSDocument.h"
#import "NSString+WordCount.h"

@implementation CLSDocument

-(void)setDocumentWordCount:(int)documentWordCount
{
    NSString *stringToCount = _documentText;
    NSUInteger wordCount = [[stringToCount componentsSeparatedByString:@" "] count];
    NSLog(@"%lu", (unsigned long)wordCount);
}

-(instancetype)initWithTitle:(NSString *)documentTitle text:(NSString *)documentText
{
    self = [super init];
    if (self)
    {
        _documentTitle = documentTitle;
        _documentText = documentText;
    }
    return self;
}

@end

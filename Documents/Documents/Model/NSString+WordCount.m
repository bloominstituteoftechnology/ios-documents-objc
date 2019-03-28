//
//  NSString+WordCount.m
//  Documents
//
//  Created by Moses Robinson on 3/27/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (NSUInteger)wordCount:(NSString *) string
{
    __block NSUInteger wordCount = 0;
    [string enumerateSubstringsInRange:NSMakeRange(0, string.length)
                               options:NSStringEnumerationByWords
                            usingBlock:^(NSString *character, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                wordCount++;
                            }];
    return wordCount;
}

@end

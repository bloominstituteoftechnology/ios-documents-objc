//
//  NSString+WordCount.m
//  Documents
//
//  Created by Mitchell Budge on 7/17/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)wordCount {
    __block int count = 0;
    __block NSString *text = @"";
    [text enumerateSubstringsInRange:NSMakeRange(0, [text length])
                            options:NSStringEnumerationByWords|NSStringEnumerationSubstringNotRequired
                         usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                             count++;
                         }];
    return count;
}

@end

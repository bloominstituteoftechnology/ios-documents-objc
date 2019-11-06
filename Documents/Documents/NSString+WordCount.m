//
//  NSString+WordCount.m
//  Documents
//
//  Created by Michael Stoffer on 11/5/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (NSInteger *)wordCount
{
    __block NSInteger *words = 0;
    [self enumerateSubstringsInRange:NSMakeRange(0,self.length)
                             options:NSStringEnumerationByWords
                          usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {words++;}];
    return words;
}

@end

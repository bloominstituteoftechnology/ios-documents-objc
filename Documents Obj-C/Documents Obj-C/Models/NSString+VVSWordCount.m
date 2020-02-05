//
//  NSString+VVSWordCount.m
//  Documents Obj-C
//
//  Created by Vici Shaweddy on 2/4/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "NSString+VVSWordCount.h"

@implementation NSString (VVSWordCount)

- (NSUInteger)wordCount:(NSString *)string {
    __block NSUInteger wordCount = 0;
    [string enumerateSubstringsInRange:NSMakeRange(0, string.length)
                               options:NSStringEnumerationByWords
                            usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        wordCount++;
    }];
    return wordCount;
}

@end

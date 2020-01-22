//
//  NSString+JBWordCount.m
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "NSString+JBWordCount.h"

@implementation NSString (JBWordCount)

- (NSUInteger)jbWordCount {
    NSArray *words = [self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return words.count;
}

- (NSString *)jbFormattedWordCount {
    NSUInteger wordCount = [self jbWordCount];
    NSString *suffix = (wordCount == 1) ? @"word" : @"words";
    return [NSString stringWithFormat:@"%lu %@", wordCount, suffix];
}

@end

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
    if ([self length] == 0) {
        return 0;
    }
    NSMutableArray *words = [[NSMutableArray alloc] initWithArray:[self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]];

    int i = 0;
    while (i < words.count) {
        NSString *word = words[i];
        if (([word length] == 0) ||
            ([[NSCharacterSet whitespaceAndNewlineCharacterSet] characterIsMember:[word characterAtIndex:0]]))
        {
            [words removeObjectAtIndex:i];
        } else {
            i++;
        }
    }

    return words.count;
}

- (NSString *)jbFormattedWordCount {
    NSUInteger wordCount = [self jbWordCount];
    NSString *suffix = (wordCount == 1) ? @"word" : @"words";
    return [NSString stringWithFormat:@"%lu %@", wordCount, suffix];
}

@end

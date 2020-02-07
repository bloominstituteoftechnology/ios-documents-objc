//
//  NSString+WordCount.m
//  Documents
//
//  Created by Joel Groomer on 2/4/20.
//  Copyright © 2020 Julltron. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)wordCount
{
    NSCharacterSet *separators = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSArray *words = [self componentsSeparatedByCharactersInSet:separators];
    
    NSIndexSet *separatorIndexes = [words indexesOfObjectsPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
        return [obj isEqualToString:@""];
    }];
    
    return words.count - separatorIndexes.count;
}

@end

//
//  NSString+WordCount.m
//  Documents
//
//  Created by John Kouris on 2/4/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "NSString+WordCount.h"


@implementation NSString (WordCount)

- (int)jdk_wordCount
{
    NSCharacterSet *seperators = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSArray *words = [self componentsSeparatedByCharactersInSet:seperators];
    NSMutableArray *forWordCount = [[NSMutableArray alloc] init];
    
    for (NSString *word in words) {
        NSString *justWord = [word stringByTrimmingCharactersInSet:seperators];
        [forWordCount addObject:justWord];
    }
    
    return (int)[forWordCount count];
}

@end

//
//  NSString+WordCount.m
//  Documents
//
//  Created by John Kouris on 2/4/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "NSString+WordCount.h"


@implementation NSString (WordCount)

- (NSUInteger)wordCount:(NSString *)text
{
    NSArray *words = [self componentsSeparatedByString:@" "];
    return [words count];
}

@end

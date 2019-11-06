//
//  NSString+WordCount.m
//  Documents
//
//  Created by Michael Stoffer on 11/5/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (NSUInteger)wordCount
{
    NSArray *wordArray = [self componentsSeparatedByString:@" "];
    return [wordArray count];
}

@end

//
//  NSString+JBWordCount.m
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "NSString+JBWordCount.h"

@implementation NSString (JBWordCount)

- (NSUInteger)wordCount {
    NSArray *words = [self componentsSeparatedByString:@" "];
    return words.count;
}

@end

//
//  NSString+LTBWordCount.m
//  Documents
//
//  Created by Linh Bouniol on 10/3/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import "NSString+LTBWordCount.h"

@implementation NSString (LTBWordCount)

- (int)wordCount // method
{
    // self refers to the string, wordCount is the method being added to every string
    // remove spaces, add words from string to array
    NSArray *words = [self componentsSeparatedByString:@" "];
    return words.count; 
}

@end

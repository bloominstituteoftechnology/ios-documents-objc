//
//  NSString+WordCount.m
//  Documents Obj-C
//
//  Created by Ivan Caldwell on 3/6/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//  http://iosdevelopertips.com/data-file-management/count-number-of-words-in-an-string.html

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)wordCount {
    int words = 0;
    
    NSScanner *scanner = [NSScanner scannerWithString: self];
    
    // Look for spaces, tabs and newlines
    NSCharacterSet *whiteSpace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    while ([scanner scanUpToCharactersFromSet:whiteSpace  intoString:nil])
        words++;
    
    return words;
    
}

@end

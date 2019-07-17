//
//  NSString+WordCount.m
//  Documents
//
//  Created by Christopher Aronson on 7/17/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (NSUInteger)krc_wordCount:(NSString *)document
{
    NSUInteger words = 0;
    
    NSScanner *scanner = [NSScanner scannerWithString: document];
    
    // Look for spaces, tabs and newlines
    NSCharacterSet *whiteSpace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    while ([scanner scanUpToCharactersFromSet:whiteSpace  intoString:nil])
        words++;
    
    return words;
}

@end

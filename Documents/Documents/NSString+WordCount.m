//
//  NSString+WordCount.m
//  Documents
//
//  Created by Bobby Keffury on 2/5/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)checkWordCount:(NSString *)string
{
     int words = 0;
    
     NSScanner *scanner = [NSScanner scannerWithString: string];
    
     // Look for spaces, tabs and newlines
     NSCharacterSet *whiteSpace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
     while ([scanner scanUpToCharactersFromSet:whiteSpace  intoString:nil])
       words++;
    
     return words;
}


@end

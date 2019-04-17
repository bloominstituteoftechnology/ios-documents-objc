//
//  NSString+WordCount.m
//  DocumentsObjC
//
//  Created by Lambda_School_Loaner_95 on 4/3/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

//- (int)jcs_wordCount:(NSString *)contents {
- (int)jcs_wordCount {
    int words = 0;
    
    NSScanner *scanner = [NSScanner scannerWithString: self];
    
    // Look for spaces, tabs and newlines
    NSCharacterSet *whiteSpace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    while ([scanner scanUpToCharactersFromSet:whiteSpace  intoString:nil])
        words++;
    
    return words;
}

@end

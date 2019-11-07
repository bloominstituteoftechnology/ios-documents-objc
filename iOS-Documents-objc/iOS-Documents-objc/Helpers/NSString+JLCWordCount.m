//
//  NSString+JLCWordCount.m
//  iOS-Documents-objc
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import "NSString+JLCWordCount.h"

@implementation NSString (JLCWordCount)

- (int)wordCount {
    int wordCount = 0;
        NSScanner *scanner = [NSScanner scannerWithString:self];
        NSCharacterSet *whiteSpace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        while ([scanner scanUpToCharactersFromSet:whiteSpace intoString:nil]) {
            wordCount++;
        }
        return wordCount;
}

//- (int)wordCountFrom:(NSString *)str {
//    int wordCount = 0;
//    NSScanner *scanner = [NSScanner scannerWithString:str];
//    NSCharacterSet *whiteSpace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//    while ([scanner scanUpToCharactersFromSet:whiteSpace intoString:nil]) {
//        wordCount++;
//    }
//    return wordCount;
//}

@end

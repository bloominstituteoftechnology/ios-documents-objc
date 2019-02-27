//
//  NSString+WordCount.m
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (NSUInteger)wordCount {
    
    NSUInteger words = 0;
    
    NSScanner *scanner = [NSScanner scannerWithString: self];
    
    NSCharacterSet *whiteSpace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    while ([scanner scanUpToCharactersFromSet:whiteSpace intoString:nil]){
        words++;
    }
    
    return words;
}

@end

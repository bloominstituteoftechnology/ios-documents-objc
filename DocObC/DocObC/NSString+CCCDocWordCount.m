//
//  NSString+CCCDocWordCount.m
//  DocObC
//
//  Created by Ryan Murphy on 7/17/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

#import "NSString+CCCDocWordCount.h"

@implementation NSString (CCCWordDocCount)

- (int)ccc_wordCount {
    
    NSCharacterSet *seperators = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSArray *words = [self componentsSeparatedByCharactersInSet:seperators];
    
    NSMutableArray *forWordCount = [[NSMutableArray alloc] init];
    
    for (NSString *word in words) {
        NSString *justWord = [word stringByTrimmingCharactersInSet:seperators];
        [forWordCount addObject:justWord];
    }
    
    return (int)[forWordCount count];
}

@end

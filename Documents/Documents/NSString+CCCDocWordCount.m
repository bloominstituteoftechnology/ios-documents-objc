//
//  NSString+CCCDocWordCount.m
//  Documents
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
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

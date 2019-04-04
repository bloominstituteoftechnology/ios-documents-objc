//
//  NSString+NYCWordCount.m
//  Documents
//
//  Created by Nathanael Youngren on 4/3/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NSString+NYCWordCount.h"

@implementation NSString (NYCWordCount)

- (int)nyc_wordCount {
    
    NSCharacterSet *seperators = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSArray *words = [self componentsSeparatedByCharactersInSet:seperators];
    
    NSMutableArray *justWords = [[NSMutableArray alloc] init];
    
    for (NSString *word in words) {
        NSString *justWord = [word stringByTrimmingCharactersInSet:seperators];
        [justWords addObject:justWord];
    }
    
    return (int)[justWords count];
}

@end

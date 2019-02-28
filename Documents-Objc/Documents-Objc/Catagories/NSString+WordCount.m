//
//  NSString+WordCount.m
//  Documents-Objc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

/// Returns an int that comes from the words in a string
- (int)wordCount {
    // Turn the string into an array separated by spaces
    NSArray *array = [self componentsSeparatedByString:@" "];
    
    // Filter out empty strings that throw off the count and return the count of the result
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF != %@", @""];
    return (int)[array filteredArrayUsingPredicate:predicate].count;
}

@end

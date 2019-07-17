//
//  NSString+WordCount.m
//  Documents
//
//  Created by Hayden Hastings on 7/17/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int *)wordCount {
    NSArray *array = [self componentsSeparatedByString:@" "];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF != %@", @""];
    return (int)[array filteredArrayUsingPredicate:predicate].count;
}

@end

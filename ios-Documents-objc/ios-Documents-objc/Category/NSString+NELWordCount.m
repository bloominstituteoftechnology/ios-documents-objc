//
//  NSString+NELWordCount.m
//  ios-Documents-objc
//
//  Created by Nelson Gonzalez on 3/27/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

#import "NSString+NELWordCount.h"

@implementation NSString (NELWordCount)

- (int)wordCount {
   // return [[self componentsSeparatedByString:@" "] count];
    NSArray *array = [self componentsSeparatedByString:@" "];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF != %@", @""];
    return (int)[array filteredArrayUsingPredicate:predicate].count;
}

@end

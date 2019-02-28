//
//  NSString+WordCount.m
//  Documents-Objc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)wordCount {
    NSArray *array = [self componentsSeparatedByString:@" "];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF != %@", @""];
    
    return (int)[array filteredArrayUsingPredicate:predicate].count;
}

@end

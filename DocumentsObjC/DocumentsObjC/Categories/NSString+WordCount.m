//
//  NSString+WordCount.m
//  DocumentsObjC
//
//  Created by Sameera Roussi on 7/17/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (NSString *)slr_wordCount {
    NSUInteger luWC;
    luWC = [[self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"length > 0"]].count;
    return  [NSString stringWithFormat:@"%lu words",  luWC];
}

@end


//
//  NSString+PCYWordCount.m
//  DocumentsObj-C
//
//  Created by Paul Yi on 4/3/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "NSString+PCYWordCount.h"

@implementation NSString (PCYWordCount)

- (int)wordCount {
    NSArray *words = [self componentsSeparatedByString:@" "];
    // return amount of words in the string
    return words.count;
}

@end

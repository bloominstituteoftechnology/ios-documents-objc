//
//  NSString+WordCount.m
//  Documents
//
//  Created by Moin Uddin on 11/14/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int) wordCount
{
    NSArray *words = [self componentsSeparatedByString:@" "];
    int count = (int)words.count;
    return count;
}

@end

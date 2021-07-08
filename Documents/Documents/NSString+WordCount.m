//
//  NSString+WordCount.m
//  Documents
//
//  Created by Sean Hendrix on 2/27/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
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

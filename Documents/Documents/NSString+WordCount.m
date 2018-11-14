//
//  NSString+WordCount.m
//  Documents
//
//  Created by Daniela Parra on 11/14/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)wordCount
{
    NSArray *words = [self componentsSeparatedByString:@" "];
    return (int)words.count;
}

@end

//
//  NSString+WordCount.m
//  Documents
//
//  Created by Carolyn Lea on 10/3/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

-(NSUInteger)wordCount:(NSString *)string
{
    return [[string componentsSeparatedByString:@" "] count];
}


@end

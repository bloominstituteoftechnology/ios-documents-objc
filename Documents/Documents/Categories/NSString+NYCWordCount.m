//
//  NSString+NYCWordCount.m
//  Documents
//
//  Created by Nathanael Youngren on 4/3/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NSString+NYCWordCount.h"

@implementation NSString (NYCWordCount)

- (int)nyc_wordCount {
    return [[self componentsSeparatedByCharactersInSet:@" "] count];
}

@end

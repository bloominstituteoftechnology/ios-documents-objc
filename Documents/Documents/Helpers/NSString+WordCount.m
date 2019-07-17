//
//  NSString+WordCount.m
//  Documents
//
//  Created by Mitchell Budge on 7/17/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (NSUInteger)wordCount {
    return [self componentsSeparatedByString:@" "].count;
}

@end

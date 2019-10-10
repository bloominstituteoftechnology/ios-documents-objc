//
//  NSString+MJRWordCount.m
//  Documents-ObjectiveC
//
//  Created by Marlon Raskin on 10/9/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "NSString+MJRWordCount.h"
#import <Foundation/Foundation.h>


@implementation NSString (MJRWordCount)

- (NSUInteger)wordCount {
    return [self componentsSeparatedByString:@" "].count;
}

@end

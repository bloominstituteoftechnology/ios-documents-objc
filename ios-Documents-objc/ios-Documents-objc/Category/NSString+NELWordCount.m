//
//  NSString+NELWordCount.m
//  ios-Documents-objc
//
//  Created by Nelson Gonzalez on 3/27/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

#import "NSString+NELWordCount.h"

@implementation NSString (NELWordCount)

- (NSInteger)wordCount {
    return [[self componentsSeparatedByString:@" "] count];
}

@end

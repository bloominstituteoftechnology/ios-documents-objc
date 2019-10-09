//
//  NSString+WordCount.m
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (NSUInteger)wordCount {
	NSArray* words = [self componentsSeparatedByString:@" "];
	return words.count;
}

@end

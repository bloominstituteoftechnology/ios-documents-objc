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
	if ([self length] == 0) {
		return 0;
	}
	NSString* tStr = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
	NSArray* words = [tStr componentsSeparatedByString:@" "];
	return words.count;
}

@end

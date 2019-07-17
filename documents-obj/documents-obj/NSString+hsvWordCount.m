//
//  NSString+hsvWordCount.m
//  documents-obj
//
//  Created by Hector Steven on 7/17/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "NSString+hsvWordCount.h"

@implementation NSString (hsvWordCount)

- (NSString *)hsv_wordCount {
	NSUInteger length = [self length];
	return [[NSString alloc] initWithFormat:@"%ld", length];
}

@end

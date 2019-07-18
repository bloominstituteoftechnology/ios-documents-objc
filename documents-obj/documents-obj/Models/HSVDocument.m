//
//  HSVDocument.m
//  documents-obj
//
//  Created by Hector Steven on 7/17/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "HSVDocument.h"
#import "../NSString+hsvWordCount.h"

@implementation HSVDocument
- (instancetype) initWithTitle:(NSString *)title body:(NSString *)body {
	self = [super init];
	if (self) {
		_title = title;
		_body = body;
		_count = [body hsv_wordCount];
	}
	return self;
}

@end

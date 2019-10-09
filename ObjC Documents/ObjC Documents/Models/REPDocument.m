//
//  REPDocument.m
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPDocument.h"
#import "NSString+WordCount.h"

@implementation REPDocument

- (instancetype)initWithTitle:(NSString*)title andText:(NSString*)text {
	if (self = [super init]) {
		_title = title;
		_text = text;
	}
	return self;
}

- (NSUInteger)wordCount {
	return self.text.wordCount;
}


@end

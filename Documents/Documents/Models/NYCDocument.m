//
//  NYCDocument.m
//  Documents
//
//  Created by Nathanael Youngren on 4/3/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCDocument.h"
#import "NSString+NYCWordCount.h"

@interface NYCDocument ()

@end

@implementation NYCDocument

- (instancetype)initWithTitle:(NSString *)title andText:(NSString *)text {
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
    }
    return self;
}

@synthesize wordCount = _wordCount;

- (int)wordCount {
    return [[self text] nyc_wordCount];
}

- (void)setWordCount:(int)wordCount {
    _wordCount = wordCount;
}

@end

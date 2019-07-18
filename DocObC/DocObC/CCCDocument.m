//
//  CCCDocument.m
//  DocObC
//
//  Created by Ryan Murphy on 7/17/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

#import "CCCDocument.h"
#import "NSString+CCCDocWordCount.h"

@interface CCCDocument ()

@end

@implementation CCCDocument

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
    return [[self text] ccc_wordCount];
}

- (void)setWordCount:(int)wordCount {
    _wordCount = wordCount;
}

@end

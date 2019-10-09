//
//  BYDocument.m
//  Document-objc
//
//  Created by Bradley Yin on 10/9/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYDocument.h"
#import "NSString+WordCount.h"

@implementation BYDocument


- (instancetype)initWithTitle:(NSString *)title body:(NSString *)bodyText {
    if (self = [super init]) {
        _title = title;
        _bodyText = bodyText;
    }
    return self;
}

- (void)setWordCount:(int)wordCount {
    _wordCount = [_bodyText wordCount];
}

@end

//
//  CCCDocument.m
//  Documents
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
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

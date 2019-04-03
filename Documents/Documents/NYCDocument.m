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

@property (nonatomic) int internalWordCount;

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

- (void)setInternalWordCount:(int)internalWordCount {
    _internalWordCount = [[self text] nyc_wordCount];
}

- (int)wordCount {
    return [self internalWordCount];
}

@end

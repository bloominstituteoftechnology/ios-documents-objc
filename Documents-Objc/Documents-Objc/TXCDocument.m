//
//  TXCDocument.m
//  Documents-Objc
//
//  Created by Thomas Cacciatore on 7/17/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCDocument.h"
#import "NSString+TXCWordCount.h"

@implementation TXCDocument

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
        
    }
    return self;
}



@synthesize wordCount = _wordCount;
- (void)setWordCount:(NSInteger)wordCount {
    _wordCount = wordCount;
}
- (NSInteger)wordCount {
    return [self.text txc_wordCount];
}

@end

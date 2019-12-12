//
//  JLRDocument.m
//  Documents
//
//  Created by Jesse Ruiz on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRDocument.h"

@implementation JLRDocument

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    if (self = [super init]) {
        _title = [title copy];
        _text = [text copy];
    }
    return self;
}

- (void)setWordCount:(NSString *)wordCount {
    _wordCount = wordCount;
}

@end

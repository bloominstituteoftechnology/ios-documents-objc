//
//  ABCDocument.m
//  Documents
//
//  Created by Austin Cole on 2/27/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import "ABCDocument.h"
#import "NSString+WordCount.h"

@implementation ABCDocument

- (instancetype)initWithTitle:(NSString *)title andWith:(NSString *)body {
    self = [super init];
    if (self != nil) {
        _title = title;
        _body = body;
    }
    return self;
}

- (void)setWordCount:(NSString *)documentBody {
    [documentBody wordCount: documentBody];
}

@end

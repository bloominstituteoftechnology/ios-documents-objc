//
//  MJRDocument.m
//  Documents-ObjectiveC
//
//  Created by Marlon Raskin on 10/9/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRDocument.h"
#import "NSString+MJRWordCount.h"


@implementation MJRDocument

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
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

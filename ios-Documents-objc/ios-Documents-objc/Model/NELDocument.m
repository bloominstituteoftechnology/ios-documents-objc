//
//  NELDocument.m
//  ios-Documents-objc
//
//  Created by Nelson Gonzalez on 3/27/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

#import "NELDocument.h"
#import "NSString+NELWordCount.h"

@implementation NELDocument

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text
{
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
    }
    return self;
}


- (int)wordCount {
    return [self.text wordCount];
}


@end

//
//  JLCDocument.m
//  iOS-Documents-objc
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import "JLCDocument.h"
#import "NSString+JLCWordCount.h"

@interface JLCDocument () {
    int _numberOfWords;
}

@end

@implementation JLCDocument

- (instancetype)init
{
    self = [super init];
    if (self) {
        _title = [[NSString alloc] init];
        _text = [[NSString alloc] init];
    }
    return self;
}

- (int)numberOfWords {
    return [self.text wordCount];
}



@end

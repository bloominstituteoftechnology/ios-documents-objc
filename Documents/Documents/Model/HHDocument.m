//
//  HHDocument.m
//  Documents
//
//  Created by Hayden Hastings on 7/17/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import "HHDocument.h"
#import "NSString+WordCount.h"

@implementation HHDocument



- (instancetype)initWithTitle:(NSString *)title
                         text:(NSString *)text {
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
    }
    return self;
}

- (int *)wordCount {
    return [self.text wordCount];
}

@end

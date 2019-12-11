//
//  GIPDocument.m
//  Documents-Objc
//
//  Created by Gi Pyo Kim on 12/11/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPDocument.h"
#import "NSString+GIPWordCount.h"

@implementation GIPDocument

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
    }
    return self;
}

- (int)wordCount {
    return [_text wordCount];
}


@end

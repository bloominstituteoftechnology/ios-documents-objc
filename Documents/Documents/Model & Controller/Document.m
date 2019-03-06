//
//  Document.m
//  Documents
//
//  Created by Madison Waters on 2/27/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import "Document.h"
#import "NSString+WordCount.h"

@implementation Document

- (instancetype) initWithTitle:(NSString *)title text:(NSString *)text {
    self = [self init];
    
    if (self) {
        _title = title;
        _text = text;
    }
    return self;
}

-(NSInteger)isWordCount {
    return [_text wordCount];
}

@end

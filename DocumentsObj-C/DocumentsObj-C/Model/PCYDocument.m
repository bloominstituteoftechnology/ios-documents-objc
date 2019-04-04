//
//  PCYDocument.m
//  DocumentsObj-C
//
//  Created by Paul Yi on 4/3/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYDocument.h"
#import "NSString+PCYWordCount.h"

@implementation PCYDocument
    // Create a custom property accessor for the word count property
- (int)wordCount {
    return [_text wordCount];
}

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    if (self = [super init]) {
        self.title = title;
        self.text = text;
    }
    return self;  
}



@end

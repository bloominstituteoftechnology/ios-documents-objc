//
//  Document.m
//  Documents Obj-C
//
//  Created by Ivan Caldwell on 3/7/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import "Document.h"
#import "NSString+WordCount.h"

@implementation Document

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
    }
    return self;
}


// Create a custom property accessor for the word count property. In the accessor, use the wordCount
// method you just created in the NSString category. (Remember to import the "NSString+WordCount.h"
// file or you won't be able to access the method)
- (int)wordCount {
    return _text.wordCount;
}

@end

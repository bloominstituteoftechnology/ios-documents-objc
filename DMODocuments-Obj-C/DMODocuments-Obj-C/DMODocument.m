//
//  DMODocument.m
//  DMODocuments-Obj-C
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import "DMODocument.h"
#import "NSString+DMOWordCount.h"

@implementation DMODocument

- (instancetype)initWithTitle:(NSString *)title
                         text:(NSString *)text {
    if (self = [super init]) {
        _title = title;
        _text = text;
    }
    return self;
}

-(int)wordCount
{
    return [self.text dmo_wordCount];
}

@end

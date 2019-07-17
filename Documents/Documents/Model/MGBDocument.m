//
//  MGBDocument.m
//  Documents
//
//  Created by Mitchell Budge on 7/17/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MGBDocument.h"

@implementation MGBDocument

- (instancetype)initWithTitle:(NSString *)title
                         text:(NSString *)text {
    self = [super init];
    if(self) {
        _title = title;
        _text = text;
    }
    return self;
}

- (int)wordCount
{
    return [self.text wordCount];
}

@end

//
//  CGADocument.m
//  ios-documents-objc
//
//  Created by Conner on 10/3/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import "CGADocument.h"

@implementation CGADocument

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
    }
    return self;
}

@end

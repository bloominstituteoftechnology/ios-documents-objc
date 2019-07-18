//
//  DLJDocument.m
//  DocumentsApp
//
//  Created by Diante Lewis-Jolley on 7/17/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import "DLJDocument.h"
#import "NSString+WordCount.h"

@implementation DLJDocument

-(instancetype)initWithTitle:(NSString *)title message:(NSString *)message {

    if (self = [super init]) {
        _title = title;
        _message = message;

    }

    return self;
}

- (NSInteger)wordCount {
    return [self.message wordCount];
}

@end

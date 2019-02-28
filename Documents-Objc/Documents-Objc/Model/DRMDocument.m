//
//  DRMDocument.m
//  Documents-Objc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "DRMDocument.h"
#import "NSString+WordCount.h"

@implementation DRMDocument

- (int)wordCount {
    return _bodyText.wordCount;
}

- (instancetype)initWithTitle: (NSString *)title andBodyText: (NSString *)bodyText {
    self = [super init];
    if (self != nil) {
        _title = [title copy];
        _bodyText = [bodyText copy];
    }
    return self;
}

@end

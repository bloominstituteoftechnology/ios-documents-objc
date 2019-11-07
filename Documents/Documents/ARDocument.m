//
//  ARDocument.m
//  Documents
//
//  Created by Alex Rhodes on 11/6/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

#import "ARDocument.h"
#import "NSString+ARWordCount.h"
@implementation ARDocument

- (instancetype) initWithTitle:(NSString *)title body: (NSString *)body {
    self = [super init]; {
        if (self)
            _title = title;
        _body = body;
    }
    return self;
}

- (NSUInteger *)wordCount {
    return [self.body wordCount];
}

@end

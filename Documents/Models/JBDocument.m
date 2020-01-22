//
//  JBDocument.m
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBDocument.h"

@implementation JBDocument

- (instancetype)initWithTitle:(NSString *)title body:(NSString *)body {
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
    }
    return self;
}

- (uint)wordCount {
    // TODO: - implement word count
    return 0;
}

@end

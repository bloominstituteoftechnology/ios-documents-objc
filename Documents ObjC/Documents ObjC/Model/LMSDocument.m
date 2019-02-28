//
//  LMSDocument.m
//  Documents ObjC
//
//  Created by Lisa Sampson on 2/27/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import "LMSDocument.h"
#import "NSString+WordCount.h"

@implementation LMSDocument

- (instancetype)initWithTitle:(NSString *)title andBody:(NSString *)body {
    
    self = [super init];
    if (self != nil) {
        _title = title;
        _body = body;
    }
    
    return self;
}

- (int)wordCount {
    return self.body.wordCount;
}

@end

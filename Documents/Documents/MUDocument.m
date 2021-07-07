//
//  MUDocument.m
//  Documents
//
//  Created by Moin Uddin on 11/14/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import "MUDocument.h"
#import "NSString+WordCount.h"
@implementation MUDocument

-(instancetype)initWithTitle:(NSString *)title body:(NSString *)body
{
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
    }
    return self;
}

-(int)wordCount
{
    return [self.body wordCount];
}
@end

//
//  SHDocument.m
//  Documents
//
//  Created by Sean Hendrix on 2/27/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import "SHDocument.h"

@implementation SHDocument

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

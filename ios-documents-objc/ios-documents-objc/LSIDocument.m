//
//  LSIDocument.m
//  ios-documents-objc
//
//  Created by Lambda_School_Loaner_214 on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIDocument.h"
#import "NSString+LSIWordCount.h"

@implementation LSIDocument
-(instancetype)initWithTitle:(NSString *)title body:(NSString *)body {
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
    }
    return self;
}

- (NSUInteger *)wordCount {
    return [self.body wordCount];
}
@end

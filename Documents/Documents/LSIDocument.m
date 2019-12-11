//
//  LSIDocument.m
//  Documents
//
//  Created by Isaac Lyons on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIDocument.h"
#import "NSString+LSIWordCount.h"

@implementation LSIDocument

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
    }
    return self;
}

- (int)wordCount {
    return [self.text wordCount];
}

@end

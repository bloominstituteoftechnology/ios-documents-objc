//
//  XYZDocument.m
//  Documents ObjC
//
//  Created by Iyin Raphael on 2/27/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "XYZDocument.h"
#import "NSString+WordCount.h"

@implementation XYZDocument

- (instancetype)initDoc:(NSString *)DocTitle DocDetails:(NSMutableString *)DocDetails {
    self = [super self];
    if (self) {
        _DocTitle = DocTitle;
        _DocDetails = DocDetails;
    }
    return self;
}
- (int) wordCount {
    
    return [self.DocDetails wordCount];
}

@end

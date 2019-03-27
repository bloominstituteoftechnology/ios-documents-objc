//
//  BHDocument.m
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import "BHDocument.h"
#import "NSString+WordCount.h"

@implementation BHDocument

- (instancetype)init{
    self = [super init];
    if (self) {
        _UUID = [[NSUUID UUID] UUIDString];
        _title = @"";
        _bodyText = @"";
        _wordCount = [_bodyText wordCount];
    }
    return self;
}

@synthesize wordCount = _wordCount;  //Must do this

//Setter method
- (void) setWordCount:(int)wordCount {
    
    _wordCount = [_bodyText wordCount];
}

//Getter method
- (int) wordCount {
    return _wordCount;
}


@end

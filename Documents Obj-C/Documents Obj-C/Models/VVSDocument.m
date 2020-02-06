//
//  VVSDocument.m
//  Documents Obj-C
//
//  Created by Vici Shaweddy on 2/4/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSDocument.h"
#import "NSString+VVSWordCount.h"

@implementation VVSDocument

- (instancetype)initWithName:(NSString *)aTitle notes:(NSString *)someNotes
{
    if (self = [super init]) {
        _title = aTitle;
        _notes = someNotes;
        _wordCount = [someNotes wordCount];
    }
    return self;
}

@end

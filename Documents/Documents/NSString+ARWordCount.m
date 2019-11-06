//
//  NSString+ARWordCount.m
//  Documents
//
//  Created by Alex Rhodes on 11/6/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

#import "NSString+ARWordCount.h"


@implementation NSString (ARWordCount)

- (NSUInteger) wordCount {
    
    NSCharacterSet *spaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSArray *words = [self componentsSeparatedByCharactersInSet:spaces];
    
    NSIndexSet *spacesIndex = [words indexesOfObjectsPassingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        return [obj isEqualToString:@" "];
    }];
    
    return [words count] - [spacesIndex count];
}


@end

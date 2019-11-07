//
//  NSString+LSIWordCount.m
//  ios-documents-objc
//
//  Created by Lambda_School_Loaner_214 on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "NSString+LSIWordCount.h"

@implementation NSString (LSIWordCount)
- (NSUInteger) wordCount {
    NSCharacterSet *spaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSArray *words = [self componentsSeparatedByCharactersInSet:spaces];
    NSIndexSet *spacesIndex = [words indexesOfObjectsPassingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        return [obj isEqualToString:@" "];
    }];
    return [words count] - [spacesIndex count];
}
@end

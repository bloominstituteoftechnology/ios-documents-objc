//
//  NSObject+OSIWordCount.m
//  Documents Obj-C
//
//  Created by Sergey Osipyan on 2/27/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import "NSObject+OSIWordCount.h"

@implementation NSString (OSIWordCount)

- (NSUInteger)wordCount:(NSString *)text {
    if (text == nil) {
        return 0;
    }
    NSArray *arrayOfWords = [text componentsSeparatedByString:@" "];
    return arrayOfWords.count;
}



@end

//
//  NSString+WordCount.m
//  Documents
//
//  Created by Austin Cole on 2/27/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

+ (NSUInteger)wordCount:(NSString *)text {
    if (text == nil) {
        return 0;
    }
    NSArray *arrayOfWords = [text componentsSeparatedByString:@" "];
    return arrayOfWords.count;
}

@end

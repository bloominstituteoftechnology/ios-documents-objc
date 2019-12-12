//
//  NSString+GIPWordCount.m
//  Documents-Objc
//
//  Created by Gi Pyo Kim on 12/11/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "NSString+GIPWordCount.h"

@implementation NSString (GIPWordCount)

- (int)wordCount {
    NSString *string = self;
    NSUInteger stringLength = [string length];
    NSUInteger index = 0;
    int wordCount = 0;
    
    if ([string length] == 0) {
        return wordCount;
    }
    wordCount++;
    do {
        if ([string characterAtIndex: index] == ' ') {
            wordCount++;
        }
        index++;
    } while (index < stringLength);
    
    return wordCount;
}

@end

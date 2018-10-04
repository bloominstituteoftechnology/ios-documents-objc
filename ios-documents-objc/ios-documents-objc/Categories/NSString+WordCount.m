//
//  NSString+WordCount.m
//  ios-documents-objc
//
//  Created by Conner on 10/3/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)wordCount {
    if ([self length] == 0) {
        return 0;
    }
    NSArray *words = [self componentsSeparatedByString:@" "];
    return (int)[words count];
}

@end

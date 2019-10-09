//
//  NSString+WordCount.m
//  Document-objc
//
//  Created by Bradley Yin on 10/9/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "NSString+WordCount.h"
#import <Foundation/Foundation.h>


@implementation NSString (WordCount)

- (int)wordCount {
    NSArray *wordArray = [self componentsSeparatedByString:@" "];
    return [wordArray count];
}

@end

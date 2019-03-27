//
//  NSString+WordCount.m
//  Documents ObjC
//
//  Created by Iyin Raphael on 2/27/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

 - (int)wordCount{
    
     NSArray *words = [self componentsSeparatedByString:@" "];
     return (int)words.count;
}

@end

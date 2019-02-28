//
//  NSObject+OSIWordCount.m
//  Documents Obj-C
//
//  Created by Sergey Osipyan on 2/27/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import "NSObject+OSIWordCount.h"

@implementation NSObject (OSIWordCount)

- (NSInteger)wordCount:(NSString *)text {

        NSInteger count = text ? ([text stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet.invertedSet].length + 1) : 0;
    return count;
}



@end

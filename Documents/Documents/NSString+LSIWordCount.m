//
//  NSString+LSIWordCount.m
//  Documents
//
//  Created by Isaac Lyons on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "NSString+LSIWordCount.h"
#import <UIKit/UIKit.h>

@implementation NSString (LSIWordCount)

- (int)wordCount {
    NSCharacterSet *separators = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSArray *words = [self componentsSeparatedByCharactersInSet:separators];
    
    NSIndexSet *separatorIndexes = [words indexesOfObjectsPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
        return [obj isEqualToString:@""];
    }];

    return (int)([words count] - [separatorIndexes count]);
}

@end

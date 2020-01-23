//
//  NSString+SKSWordCount.m
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "NSString+SKSWordCount.h"

@implementation NSString (SKSWordCount)

- (int)sks_wordCount {
    return (int)[[self componentsSeparatedByString:@" "] count];
}

@end

//
//  NSString+DMOWordCount.m
//  DMODocuments-Obj-C
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import "NSString+DMOWordCount.h"


@implementation NSString (DMOWordCount)

- (int)dmo_wordCount {
    return (int) [self componentsSeparatedByString:@" "].count;
}

@end

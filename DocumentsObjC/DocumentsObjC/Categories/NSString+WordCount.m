//
//  NSString+WordCount.m
//  DocumentsObjC
//
//  Created by Sameera Roussi on 7/17/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (NSString *)slr_wordCount {
    return[NSString stringWithFormat:@"%@",  self];
}

@end


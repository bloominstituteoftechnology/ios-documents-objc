//
//  NSString+WordCount.m
//  DocumentsApp
//
//  Created by Diante Lewis-Jolley on 7/17/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (NSInteger)wordCount {
    return [[self componentsSeparatedByString:@" "] count];
}



@end

//
//  NSString+WordCount.m
//  

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (NSInteger)wordCount {
    return [[self componentsSeparatedByString:@" "] count];
}

@end

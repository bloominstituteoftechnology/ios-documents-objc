//
//  NSString+WordCount.m
//  

#import "NSString+WordCount.h"

@implementation NSString (WordCount)
    
- (NSInteger)wordCount {

    return [[self componentsSeparatedByString:@" "] count];
    
}

@end




//    NSCharacterSet *separators = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//    NSArray *words = [self componentsSeparatedByCharactersInSet:separators];
//
//    NSIndexSet *separatorIndexes = [words indexesOfObjectsPassingTest:^BOOL(id obj, NSInteger idx, BOOL *stop) {
//        return [obj isEqualToString:@""];
//    }];
//
//    return [words count] - [separatorIndexes count];




//NSInteger wordCount(NSString* string) {
//return [[string componentsSeparatedByString:@""] count];

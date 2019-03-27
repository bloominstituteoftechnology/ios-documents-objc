//
//  NSString+WordCount.m
//  Documents Objc
//
//  Created by Ilgar Ilyasov on 11/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)wordCount
{
    NSArray *words = [self componentsSeparatedByString:@" "];
    int count = (int)words.count;
    return count;
}

@end

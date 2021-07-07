//
//  NSString+WordCount.m
//  Documents ObjC
//
//  Created by Lisa Sampson on 2/27/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)wordCount {
    
    NSArray *wordCount = [self componentsSeparatedByString:@" "];
    return (int)wordCount.count;
}

@end

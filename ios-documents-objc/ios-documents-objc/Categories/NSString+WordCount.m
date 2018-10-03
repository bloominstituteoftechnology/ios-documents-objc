//
//  NSString+WordCount.m
//  ios-documents-objc
//
//  Created by Conner on 10/3/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

- (int)wordCount:(NSString *)string {
    return (int)[string length];
}

@end

//
//  NSString+WordCount.m
//  DocumentsObjC1Wed
//
//  Created by John Pitts on 7/17/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//

#import <Foundation/Foundation.h>  // to allow autocomplete of array methods
#import "NSString+WordCount.h"


// This is a CATEGORY of NSString which allows you to write a new method within a given type like NSString, giving you more functionality you can call at any time in your project.  In this project we only need to use this once...

@implementation NSString (WordCount)

- (NSUInteger )wordCount {
    
    // take a long NSString and count the spaces to get word count
           // safety... don't count a space if it comes first
           // add 1 (+1 the count to account for end of string"
           // if string ENDS with string, discount it (subtract 1)
    // didn't need all this logic, the NSString method takes care of it all!
    
    // really don't like the addition of (void) here... or the () around "%@"
    NSArray *arrayOfWords = [self componentsSeparatedByString:@" "];

    return [arrayOfWords count];
}

@end

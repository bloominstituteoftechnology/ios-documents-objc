//
//  iOS_Documents_objcTests.m
//  iOS-Documents-objcTests
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+JLCWordCount.h"

@interface iOS_Documents_objcTests : XCTestCase

@end

@implementation iOS_Documents_objcTests

- (void)testWordCount {
    
    NSString *testString = @"This is a test string testing word count.";
    int result = [testString wordCount];
    
    NSLog(@"The Test String Count is: %d", [testString wordCount]);
    XCTAssertEqual(result, 8);
}



@end

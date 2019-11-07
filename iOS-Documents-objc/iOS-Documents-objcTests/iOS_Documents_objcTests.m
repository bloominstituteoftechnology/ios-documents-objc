//
//  iOS_Documents_objcTests.m
//  iOS-Documents-objcTests
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+JLCWordCount.h"
#import "JLCDocument.h"
#import "JLCDocumentController.h"

@interface iOS_Documents_objcTests : XCTestCase

@end

@implementation iOS_Documents_objcTests

- (void)testWordCount {
    
    NSString *testString = @"This is a test string testing word count.";
    int result = [testString wordCount];
    
    NSLog(@"The Test String Count is: %d", [testString wordCount]);
    XCTAssertEqual(result, 8);
}

- (void)testDocumentModel {
    JLCDocument *doc = [[JLCDocument alloc] init];
    
    [doc setTitle:@"This is a test"];
    [doc setText:@"This is a word count string to be used for counting and the count should be 17"];
    [doc numberOfWords];
    
    XCTAssertEqual(doc.title, @"This is a test");
    XCTAssertEqual(doc.text, @"This is a word count string to be used for counting and the count should be 17");
    XCTAssertEqual(doc.numberOfWords, 17);
}

- (void)testCreatingDocument {
    JLCDocumentController *documentController = [[JLCDocumentController alloc] init];
    
    [documentController createDocumentWithTitle:@"This is a test" text:@"This is a word count string to be used for counting and the count should be 17"];
    
    XCTAssertEqual(JLCDocumentController.totalDocumentsCreated, 1);
}

-(void)testDeleteDocument {
    JLCDocumentController *documentController = [[JLCDocumentController alloc] init];
    [documentController createDocumentWithTitle:@"This is a test" text:@"This is a word count string to be used for counting and the count should be 17"];
    XCTAssertEqual(JLCDocumentController.totalDocumentsCreated, 1);
    
    JLCDocument *doc = [[JLCDocument alloc] init];
    [doc setTitle:@"This is a test"];
    [doc setText:@"This is a word count string to be used for counting and the count should be 17"];
    XCTAssertEqual(doc.numberOfWords, 17);
    
    [documentController deleteDocument:doc];
    XCTAssertEqual(JLCDocumentController.totalDocumentsCreated, 0);
}

-(void)testUpdatingDocument {
    JLCDocumentController *documentController = [[JLCDocumentController alloc] init];
    [documentController createDocumentWithTitle:@"This is a test" text:@"This is a word count string to be used for counting and the count should be 17"];
    XCTAssertEqual(JLCDocumentController.totalDocumentsCreated, 1);
    
    JLCDocument *doc2 = [[JLCDocument alloc] init];
    [doc2 setTitle:@"This is a test"];
    [doc2 setText:@"This is update"];
    
    [documentController updateDocument:documentController.documents[0] title:doc2.title text:doc2.text];
    XCTAssertEqual([documentController.documents[0]text], @"This is update");
    NSLog(@"THE TEXT: %@",[documentController.documents[0]text]);
}

@end

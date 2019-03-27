//
//  NELDocumentController.h
//  ios-Documents-objc
//
//  Created by Nelson Gonzalez on 3/27/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class NELDocument;

@interface NELDocumentController : NSObject

- (void)createDocumentWithTitle:(NSString *)title text: (NSString *)text wordCount:(NSInteger)wordCount;

- (void)updateDocument:(NELDocument *)document withTitle:(NSString *)title text:(NSString *)text wordCount:(NSInteger)wordCount;

//Remove a document
- (void)removeDocument:(NELDocument *)document;



@property (nonatomic, readonly) NSArray *documentsArray;


@end

NS_ASSUME_NONNULL_END

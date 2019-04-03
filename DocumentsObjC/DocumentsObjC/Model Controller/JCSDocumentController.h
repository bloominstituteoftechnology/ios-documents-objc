//
//  JCSDocumentController.h
//  DocumentsObjC
//
//  Created by Lambda_School_Loaner_95 on 4/3/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JCSDocument;

NS_ASSUME_NONNULL_BEGIN

@interface JCSDocumentController : NSObject

@property (nonatomic, readonly) NSArray *documents;

- (void)addNewDocument:(JCSDocument *)document;

- (void)updateADocument:(JCSDocument *)document title:(NSString *)title contents:(NSString *)contents wordCount:(int)wordCount;

- (void)removeADocument:(JCSDocument *)document;

@end

NS_ASSUME_NONNULL_END

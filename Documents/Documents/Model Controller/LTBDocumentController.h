//
//  LTBDocumentController.h
//  Documents
//
//  Created by Linh Bouniol on 10/3/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LTBDocument;

NS_ASSUME_NONNULL_BEGIN

@interface LTBDocumentController : NSObject

@property (nonatomic, readonly) NSArray<LTBDocument *> *documents;

- (void)createDocumentWithTitle:(NSString *)title text:(NSString *)text;
- (void)updateDocument:(LTBDocument *)document title:(NSString *)title text:(NSString *)text;
- (void)deleteDocument:(LTBDocument *)document;

@end

NS_ASSUME_NONNULL_END

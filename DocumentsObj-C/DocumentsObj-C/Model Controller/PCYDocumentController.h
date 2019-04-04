//
//  PCYDocumentController.h
//  DocumentsObj-C
//
//  Created by Paul Yi on 4/3/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PCYDocument;

NS_ASSUME_NONNULL_BEGIN

@interface PCYDocumentController : NSObject

@property (nonatomic, readonly) NSArray<PCYDocument *> *documents;

- (void)createDocumentWithTitle:(NSString *)title text:(NSString *)text;
- (void)updateDocument:(PCYDocument *)document title:(NSString *)title text:(NSString *)text;
- (void)deleteDocument:(PCYDocument *)document;

@end

NS_ASSUME_NONNULL_END

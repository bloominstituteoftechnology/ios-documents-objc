//
//  CGADocumentController.h
//  ios-documents-objc
//
//  Created by Conner on 10/3/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CGADocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface CGADocumentController : NSObject

- (void)createDocumentWithTitle:(NSString *)title text:(NSString *)text;
- (void)updateDocument:(CGADocument *)document title:(NSString *)title text:(NSString *)text;
- (void)deleteDocument:(CGADocument *)document;

@property NSMutableArray<CGADocument *> *documents;

@end

NS_ASSUME_NONNULL_END

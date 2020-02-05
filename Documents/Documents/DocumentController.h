//
//  DocumentController.h
//  Documents
//
//  Created by John Kouris on 2/4/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JDKDocument;

NS_ASSUME_NONNULL_BEGIN

@interface DocumentController : NSObject

@property (nonatomic, copy) NSArray<JDKDocument *> *documents;

- (void)createDocument:(JDKDocument *)aDocument;
- (void)updateDocument:(JDKDocument *)aDocument;
- (void)deleteDocument:(JDKDocument *)aDocument;

@end

NS_ASSUME_NONNULL_END

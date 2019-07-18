//
//  KRCDocumentController.h
//  Documents
//
//  Created by Christopher Aronson on 7/17/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class KRCDocument;

@interface KRCDocumentController : NSObject

@property (nonatomic, readonly) NSArray *documents;

- (void)addDocument:(KRCDocument *)document;
- (void)updateDocument:(KRCDocument *)document atIndex:(NSInteger)index;
- (void)removeDocument:(KRCDocument *)document;

- (NSInteger)getCount;

@end

NS_ASSUME_NONNULL_END

//
//  TXCDocumentController.h
//  Documents-Objc
//
//  Created by Thomas Cacciatore on 7/17/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TXCDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface TXCDocumentController : NSObject

@property (nonatomic, readonly) NSArray *documents;

- (void)addDocument:(TXCDocument *)document;

- (void)removeDocument:(TXCDocument *)document;

- (void)updateDocument:(TXCDocument *)document title:(NSString *)title text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END

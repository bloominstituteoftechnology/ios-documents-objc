//
//  ABCDocumentController.h
//  Documents
//
//  Created by Austin Cole on 2/27/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ABCDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface ABCDocumentController : NSObject

@property NSMutableArray *documentsArray;

- (void)createDocument: (NSString *)title withBody: (NSString *)body;
- (void)updateDocument: (ABCDocument *)document withTitle: (NSString *)title withBody: (NSString *)body;
- (void)deleteDocument: (ABCDocument *)document;

@end

NS_ASSUME_NONNULL_END

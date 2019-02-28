//
//  OSIDocumentController.h
//  Documents Obj-C
//
//  Created by Sergey Osipyan on 2/27/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSIDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface OSIDocumentController : NSObject

@property NSMutableArray *documents;

- (void)createDocument: (NSString *)title withBody: (NSString *)text;
- (void)updateDocument: (OSIDocument *)document withTitle: (NSString *)title bodyText: (NSString *)bodyText;
- (void)deleteDocument: (OSIDocument *)document;

@end

NS_ASSUME_NONNULL_END

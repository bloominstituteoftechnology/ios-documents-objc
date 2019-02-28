//
//  DRMDocumentModelController.h
//  Documents-Objc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DRMDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface DRMDocumentModelController : NSObject

@property NSMutableArray *documents;

- (instancetype)init;

- (void)createDocumentWithTitle: (NSString *)title andBodyText: (NSString *)bodyText;

- (void)updateDocument: (DRMDocument *)document withTitle: (NSString *)title andBodyText: (NSString *)bodyText;

- (void)deleteDocument: (DRMDocument *)document;

@end

NS_ASSUME_NONNULL_END

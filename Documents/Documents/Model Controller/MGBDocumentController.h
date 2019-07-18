//
//  MGBDocumentController.h
//  Documents
//
//  Created by Mitchell Budge on 7/17/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MGBDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface MGBDocumentController : NSObject

@property NSMutableArray *documents;

- (void)createDocumentWithTitle:(NSString *)title andText:(NSString *)text;

- (void)updateDocument:(MGBDocument *)document withTitle:(NSString *)title andText:(NSString *)text;

- (void)deleteDocument:(MGBDocument *)document;

@end

NS_ASSUME_NONNULL_END

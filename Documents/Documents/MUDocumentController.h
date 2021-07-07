//
//  MUDocumentController.h
//  Documents
//
//  Created by Moin Uddin on 11/14/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MUDocument.h"
NS_ASSUME_NONNULL_BEGIN

@interface MUDocumentController : NSObject

- (void) createDocumentWithTitle:(NSString *)title body:(NSString *)body;

- (void) updateDocumentWithDocument:(MUDocument *)document title:(NSString *)title body:(NSString *)body;

- (void) deleteDocumentWIthDocument:(MUDocument *)document;

@property NSMutableArray *documents;

@end

NS_ASSUME_NONNULL_END

//
//  SHDocumentController.h
//  Documents
//
//  Created by Sean Hendrix on 2/27/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SHDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface SHDocumentController : NSObject

- (void) createDocumentWithTitle:(NSString *)title body:(NSString *)body;

- (void) updateDocumentWithDocument:(MUDocument *)document title:(NSString *)title body:(NSString *)body;

- (void) deleteDocumentWIthDocument:(MUDocument *)document;

@property NSMutableArray *documents;

@end

NS_ASSUME_NONNULL_END

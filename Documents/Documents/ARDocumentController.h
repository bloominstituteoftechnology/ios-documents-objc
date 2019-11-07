//
//  ARDocumentController.h
//  Documents
//
//  Created by Alex Rhodes on 11/6/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARDocument.h"

@interface ARDocumentController : NSObject

@property (nonatomic, copy) NSArray *documents;

- (void) createDocumentWithTitle:(NSString *)title body:(NSString *)body;

- (void) updateDocumentWith:(ARDocument *)document title:(NSString *)title body:(NSString *)body;

- (void)deleteDocument:(ARDocument *)document;


@end


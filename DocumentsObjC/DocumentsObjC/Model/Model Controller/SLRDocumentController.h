//
//  SLRDocumentController.h
//  DocumentsObjC
//
//  Created by Sameera Roussi on 7/17/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLRDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface SLRDocumentController : NSObject

@property (nonatomic, readonly) NSArray *documents;

// Add a document
- (void)addDocument:(SLRDocument *)document;

// Remove a document
-(void) removeDocument:(SLRDocument *)document;

// Get count of documents
- (NSUInteger)countOfDocuments;

@end

NS_ASSUME_NONNULL_END

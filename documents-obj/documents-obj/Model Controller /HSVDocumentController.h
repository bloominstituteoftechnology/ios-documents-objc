//
//  HSVDocumentController.h
//  documents-obj
//
//  Created by Hector Steven on 7/17/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../Models/HSVDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface HSVDocumentController : NSObject

@property (nonatomic, readonly) NSArray *documents;

- (NSArray *)documents;
- (NSInteger)countOfDocuments;
- (void)createDocument:(HSVDocument *)document;
- (void)updateDocument:(HSVDocument *)document;
- (void)deleteDocument:(HSVDocument *)document;

@end

NS_ASSUME_NONNULL_END

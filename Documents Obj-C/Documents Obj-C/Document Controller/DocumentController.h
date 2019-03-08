//
//  DocumentController.h
//  Documents Obj-C
//
//  Created by Ivan Caldwell on 3/7/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//
/*
 1. Create a model controller for your Document model.
 2. Add a property (with the appropriate property attributes) that will hold an array of documents.
 3. In the initializer of this class, initialize the array with an empty array.
 4. Add and implement three methods that will create, update, and delete a document, respectively.
 */

#import <Foundation/Foundation.h>
#import "Document.h"

NS_ASSUME_NONNULL_BEGIN

@interface DocumentController : NSObject
@property NSMutableArray *documents;

- (instancetype) init;
- (void) createDocument:(NSString *)title text:(NSString *)text;
- (void) updateDocument:(Document *)document title:(NSString *)title text:(NSString *)text;
- (void) deleteDocument:(Document *)document;


@end

NS_ASSUME_NONNULL_END

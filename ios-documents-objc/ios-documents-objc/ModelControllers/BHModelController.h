//
//  BHModelController.h
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface BHModelController : NSObject

@property NSMutableArray<BHDocument *> *documents;

-(instancetype)initWithArray:(NSMutableArray *)array;

// create
-(void)createDocument: (BHDocument *)document;

// update
-(void)updateDocument: (BHDocument *)updatedDocument;

// delete
-(void)deleteDocument: (BHDocument *)documentToDelete;

@end

NS_ASSUME_NONNULL_END

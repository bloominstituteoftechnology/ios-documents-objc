//
//  JLRDocumentController.h
//  Documents
//
//  Created by Jesse Ruiz on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JLRDocument.h"

@interface JLRDocumentController : NSObject

@property (nonatomic, copy, readonly) NSArray *documents;

- (void)createDoc:(JLRDocument *)document;
//- (void)updateDoc:(JLRDocument *)document;
- (void)deleteDoc:(JLRDocument *)document;

@end

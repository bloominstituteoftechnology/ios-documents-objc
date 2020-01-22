//
//  SKSDocumentController.h
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SKSDocument;

@interface SKSDocumentController : NSObject

@property (nonatomic, readonly) NSArray *documents;

- (void)createDocument:(SKSDocument *)document;
- (void)updateDocument:(SKSDocument *)document with:(SKSDocument *)updatedDocument;
- (void)deleteDocument:(SKSDocument *)document;

@end

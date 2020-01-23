//
//  SKSDocumentController.h
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SKSDocument, Document;

@interface SKSDocumentController : NSObject

@property (nonatomic, readonly) NSArray *documents;

- (void)createDocument:(Document *)document;
- (void)updateDocument:(Document *)document with:(Document *)updatedDocument;
- (void)deleteDocument:(Document *)document;

@end

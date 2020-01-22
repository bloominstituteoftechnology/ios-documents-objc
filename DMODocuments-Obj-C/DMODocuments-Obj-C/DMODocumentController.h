//
//  DMODocumentController.h
//  DMODocuments-Obj-C
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DMODocument;

@interface DMODocumentController : NSObject

@property (readonly, nonatomic) NSArray *documents;

- (void)addDocument:(DMODocument *)document;
- (void)removeDocument:(DMODocument *)document;
- (void)updateDocument:(DMODocument *)document;

@end

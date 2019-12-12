//
//  GIPDocumentController.h
//  Documents-Objc
//
//  Created by Gi Pyo Kim on 12/11/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GIPDocument;

@interface GIPDocumentController : NSObject

@property (readonly) NSArray *documents;

- (void)addDocument:(GIPDocument *)document;
- (void)updateDocument:(GIPDocument *)document index:(NSUInteger)index;
- (void)removeDocument:(GIPDocument *)document;

@end


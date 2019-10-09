//
//  BYDocumentController.h
//  Document-objc
//
//  Created by Bradley Yin on 10/9/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BYDocument;

@interface BYDocumentController : NSObject

@property NSMutableArray *documents;

- (void)createDocument:(BYDocument *)document;
- (void)updateDocument:(BYDocument *)document title:(NSString *)title body:(NSString *)body;
- (void)removeDoument:(BYDocument *)document;

@end


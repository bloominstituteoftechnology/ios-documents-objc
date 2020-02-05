//
//  VVSDocumentController.h
//  Documents Obj-C
//
//  Created by Vici Shaweddy on 2/4/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VVSDocument.h"

@interface VVSDocumentController : NSObject

@property (nonatomic, copy) NSArray<VVSDocument *> *documents;

- (void)addDocument:(VVSDocument *)aDocument;
- (void)removeDocument:(VVSDocument *)aDocument;
- (void)updateDocument:(VVSDocument *)aDocument
             withIndex:(NSUInteger)index;

@end


//
//  DLJDocumentController.h
//  DocumentsApp
//
//  Created by Diante Lewis-Jolley on 7/17/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class DLJDocument;

@interface DLJDocumentController : NSObject

@property (nonatomic, readonly)NSArray *documents;

-(void)createDocument:(NSString *)title message:(NSString *)message wordCount: (NSInteger *)wordCount;

-(void)updateDoc:(DLJDocument *)document title:(NSString *)title message:(NSString *)message wordCount: (NSInteger *)wordCount;

-(void)deleteDocument:(DLJDocument *)document;

-(void)addDocument:(DLJDocument *)document;

@end

NS_ASSUME_NONNULL_END

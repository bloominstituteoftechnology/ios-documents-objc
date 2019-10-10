//
//  MJRDocumentController.h
//  Documents-ObjectiveC
//
//  Created by Marlon Raskin on 10/9/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MJRDocument;

@interface MJRDocumentController : NSObject

@property (readonly) NSMutableArray *documents;

- (instancetype)init;
- (void)addDocument:(MJRDocument *)document;
- (void)updateDocument:(MJRDocument *)document withTitle:(NSString *)title andText:(NSString *)text;
- (void)deleteDocument:(MJRDocument *)document;
- (NSUInteger)count;
- (MJRDocument *)documentAtIndex:(NSUInteger)index;


@end

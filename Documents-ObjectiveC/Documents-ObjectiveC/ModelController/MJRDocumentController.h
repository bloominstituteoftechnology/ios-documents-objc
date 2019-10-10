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

@property (readonly) NSArray *documents;

- (instancetype)initWithDocuments:(NSArray *)documents;
- (void)createDocument:(MJRDocument *)document;
- (void)deleteDocument:(MJRDocument *)document;


@end

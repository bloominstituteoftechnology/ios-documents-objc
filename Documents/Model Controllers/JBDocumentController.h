//
//  JBDocumentController.h
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JBDocument;


@interface JBDocumentController : NSObject

@property (readonly, nonatomic) NSArray *documents;

- (void)createDocumentWithTitle:(NSString *)title
                           body:(NSString *)body;

- (void)updateDocument:(JBDocument *)document
          withNewTitle:(NSString *)newTitle
                  body:(NSString *)newBody;

- (void)moveDocumentAtIndex:(NSUInteger)oldIndex
                         to:(NSUInteger)newIndex;

- (void)deleteDocument:(JBDocument *)document;

- (void)deleteDocumentAtIndex:(NSUInteger)index;

@end

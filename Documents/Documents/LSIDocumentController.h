//
//  LSIDocumentController.h
//  Documents
//
//  Created by Isaac Lyons on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LSIDocument;

@interface LSIDocumentController : NSObject

@property (readonly) NSMutableArray *documents;

- (void)addDocumentWithTitle:(NSString *)title
                        text:(NSString *)text;

- (void)updateDocument:(LSIDocument *)document
                 title:(NSString *)title
                  text:(NSString *)text;

- (void)deleteDocument:(LSIDocument *)document;

@end

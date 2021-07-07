//
//  DYPDocumentController.h
//  Documents
//
//  Created by Daniela Parra on 11/14/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DYPDocument;

NS_ASSUME_NONNULL_BEGIN

@interface DYPDocumentController : NSObject

- (DYPDocument *)createDocumentWithTitle:(NSString *)title bodyText:(NSString *)bodyText;

- (void)updateDocument:(DYPDocument *)document title:(NSString *)title bodyText:(NSString *)bodyText;

- (void)deleteDocument:(DYPDocument *)document;

@property (nonatomic, readonly) NSMutableArray *documents;

@end

NS_ASSUME_NONNULL_END

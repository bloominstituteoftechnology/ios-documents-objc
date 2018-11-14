//
//  IIDocumentController.h
//  Documents Objc
//
//  Created by Ilgar Ilyasov on 11/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IIDocument;

NS_ASSUME_NONNULL_BEGIN

@interface IIDocumentController : NSObject

- (void)createWithTitle:(NSString *)title body:(NSString *)body;
- (void)updateDocument:(IIDocument *)document title:(NSString *)title body:(NSString *)body;
- (void)deleteDocument:(IIDocument *)document;

@property (nonatomic, readonly) NSMutableArray *documents;

@end

NS_ASSUME_NONNULL_END

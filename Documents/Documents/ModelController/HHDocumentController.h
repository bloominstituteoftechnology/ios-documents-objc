//
//  HHDocumentController.h
//  Documents
//
//  Created by Hayden Hastings on 7/17/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class HHDocument;

@interface HHDocumentController : NSObject

@property (nonatomic) NSArray *documentsArray;

- (void)createDocumentWithTitle:(NSString *)title
                           text:(NSString *)text;

- (void)updateDocument:(HHDocument *)document withTitle:(NSString *)title
                  text:(NSString *)text;

- (void)removeDocument:(HHDocument *)document;

@end

NS_ASSUME_NONNULL_END

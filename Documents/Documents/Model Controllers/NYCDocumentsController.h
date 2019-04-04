//
//  NYCDocumentsController.h
//  Documents
//
//  Created by Nathanael Youngren on 4/3/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NYCDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface NYCDocumentsController : NSObject

- (void)addDocument:(NYCDocument *)document;

- (void)removeDocument:(NYCDocument *)document;

- (void)updateDocument:(NYCDocument *)document withTitle:(NSString *)title andText:(NSString *)text;

@property (nonatomic) NSArray *documents;

@end

NS_ASSUME_NONNULL_END

//
//  CCCDocumentsController.h
//  Documents
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface CCCDocumentsController : NSObject

- (void)addDocument:(CCCDocument *)document;

- (void)removeDocument:(CCCDocument *)document;

- (void)updateDocument:(CCCDocument *)document withTitle:(NSString *)title andText:(NSString *)text;

@property (nonatomic) NSArray *documents;

@end

NS_ASSUME_NONNULL_END

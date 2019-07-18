//
//  CCCDocumentsController.h
//  DocObC
//
//  Created by Ryan Murphy on 7/17/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
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

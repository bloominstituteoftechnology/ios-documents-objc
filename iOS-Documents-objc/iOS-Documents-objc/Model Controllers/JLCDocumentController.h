//
//  JLCModelController.h
//  iOS-Documents-objc
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JLCDocument.h"

@interface JLCDocumentController : NSObject

@property (nonatomic, readonly) NSArray *documents;

@property (nonatomic, class, readonly) int totalDocumentsCreated;

- (void)createDocumentWithTitle:(NSString *)title
                      text:(NSString *)text;

- (void)deleteDocument:(JLCDocument *)document;


@end

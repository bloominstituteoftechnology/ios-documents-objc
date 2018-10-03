//
//  CLSDocumentController.h
//  Documents
//
//  Created by Carolyn Lea on 10/3/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLSDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface CLSDocumentController : NSObject

@property NSMutableArray *documents;

-(void)createDocument:(NSString *)title text:(NSString *)text;
-(void)updateDocument:(CLSDocument *)document title:(NSString *)title text:(NSString *)text;
-(void)deleteDocument:(CLSDocument *)document;
-(void)saveDocument;

@end

NS_ASSUME_NONNULL_END

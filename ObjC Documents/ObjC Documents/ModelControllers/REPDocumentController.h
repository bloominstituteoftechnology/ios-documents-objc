//
//  REPDocumentController.h
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
@class REPDocument;

@interface REPDocumentController : NSObject

@property (readonly) NSArray* documents;

- (void)createDocumentWithTitle:(NSString*)title andText:(NSString*)text;

- (void)updateDocument:(REPDocument*)document withTitle:(NSString*)title andText:(NSString*)text;

- (void)deleteDocument:(REPDocument*)document;

@end

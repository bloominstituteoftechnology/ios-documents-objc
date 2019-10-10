//
//  DocumentController.h
//  DocumentsObj-C
//
//  Created by Luqmaan Khan on 10/9/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Document;
@interface DocumentController : NSObject

//create
-(void)addDocumentWithTitle:(NSString *)title
andText:(NSString *)text;

//update
-(void)update:(Document *)document
withTitle:(NSString *)title
 andText:(NSString *)text;

//delete
-(void)deleteDocument:(Document *)document;

//Document At Index

-(Document *)documentAtIndex:(NSUInteger)index;

@property NSMutableArray *documents;

@end


//
//  DocumentController.h
//  Documents
//
//  Created by Michael Stoffer on 11/5/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Document;

@interface DocumentController : NSObject

@property (nonatomic, readonly, copy) NSArray<Document *> *documents;

- (void)addDocument:(Document *)aDocument;
- (void)removeDocument:(Document *)aDocument;

@end

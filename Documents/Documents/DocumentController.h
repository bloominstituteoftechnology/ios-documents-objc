//
//  DocumentController.h
//  Documents
//
//  Created by Bobby Keffury on 2/5/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Document;

NS_ASSUME_NONNULL_BEGIN

@interface DocumentController : NSObject

@property (nonatomic, readonly, copy) NSArray<Document *> *documents;

- (void)addDocument:(Document *)aDocument;
- (void)updateDocument:(Document *)aDocument;
- (void)removeDocument:(Document *)aDocument;

@end

NS_ASSUME_NONNULL_END

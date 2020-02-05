//
//  DocumentController.h
//  Documents
//
//  Created by Joel Groomer on 2/4/20.
//  Copyright © 2020 Julltron. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Document;

NS_ASSUME_NONNULL_BEGIN

@interface DocumentController : NSObject

@property (nonatomic, copy) NSArray *documents;

- (void)addDocument:(Document *)aDocument;
- (void)delDocument:(Document *)aDocument;

@end

NS_ASSUME_NONNULL_END

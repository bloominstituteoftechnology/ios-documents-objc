//
//  DocumentController.h
//  Documents
//
//  Created by Madison Waters on 2/27/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Document;

NS_ASSUME_NONNULL_BEGIN

@interface DocumentController : NSObject

@property (nonatomic, readonly) NSArray* documents;

-(void)addDocument:(Document *)document;
-(void)updateDocument:(Document *)document title:(NSString *)title text:(NSString *)text;
-(void)removeDocument:(Document *)document;

@end

NS_ASSUME_NONNULL_END

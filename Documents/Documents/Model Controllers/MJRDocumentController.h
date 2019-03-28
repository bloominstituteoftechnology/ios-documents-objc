//
//  MJRDocumentController.h
//  Documents
//
//  Created by Moses Robinson on 3/28/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MJRDocument;

NS_ASSUME_NONNULL_BEGIN

@interface MJRDocumentController : NSObject

-(void)createDocWithTitle:(NSString *)title bodyText:(NSString *)bodyText;

-(void)updateDoc:(MJRDocument *)document title:(NSString *)title bodyText:(NSString *)bodyText;

-(void)removeDoc:(MJRDocument *)document;

@property (nonatomic, readonly) NSArray *documents;

@end

NS_ASSUME_NONNULL_END

//
//  FCCDocumentsController.h
//  Documents
//
//  Created by Lambda_School_Loaner_34 on 4/4/19.
//  Copyright © 2019 Frulwinn. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class FCCDocuments;

@interface FCCDocumentsController : NSObject

-(void)createDocWithTitle:(NSString *)title bodyText:(NSString *)bodyText;

-(void)updateDoc:(FCCDocuments *)document title:(NSString *)title bodyText:(NSString *)bodyText;

-(void)removeDoc:(FCCDocuments *)document;

@property (nonatomic, readonly) NSArray *documents;

@end

NS_ASSUME_NONNULL_END

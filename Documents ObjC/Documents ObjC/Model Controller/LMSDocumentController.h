//
//  LMSDocumentController.h
//  Documents ObjC
//
//  Created by Lisa Sampson on 2/27/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LMSDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface LMSDocumentController : NSObject

@property (readonly) NSMutableArray *documents;

-(void) createWithTitle: (NSString *)title andBody: (NSString *)body;
-(void) updateDoc: (LMSDocument *)document withTitle:(NSString *)title andBody: (NSString *)body;
-(void) deleteDoc: (LMSDocument *)document;

@end

NS_ASSUME_NONNULL_END

//
//  LSIDocumentController.h
//  ios-documents-objc
//
//  Created by Lambda_School_Loaner_214 on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIDocument.h"

@interface LSIDocumentController : NSObject
@property (nonatomic, copy) NSArray *documents;

-(void)createDocWithTitle:(NSString *)title body:(NSString *)body;
-(void)updateDoc:(LSIDocument *)document title:(NSString *)title body:(NSString *)body;
-(void)deleteDoc:(LSIDocument *)docuemnt;
@end


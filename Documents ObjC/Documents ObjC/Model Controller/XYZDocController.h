//
//  XYZDocController.h
//  Documents ObjC
//
//  Created by Iyin Raphael on 2/27/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface XYZDocController : NSObject

-(void) createDoc: (NSString *)DocTitle DocDetails: (NSString *)DocDetails;
-(void) updateDoc: (XYZDocument *)document Doctitle: (NSString *)DocTitle DocDetails: (NSString *)DocDetails;
@property (nonatomic) NSMutableArray *documents;

@end

NS_ASSUME_NONNULL_END

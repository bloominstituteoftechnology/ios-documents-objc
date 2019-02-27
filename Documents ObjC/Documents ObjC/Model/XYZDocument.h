//
//  XYZDocument.h
//  Documents ObjC
//
//  Created by Iyin Raphael on 2/27/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYZDocument : NSObject

- (instancetype)initDoc: (NSString *)DocTitle DocDetails: (NSMutableString *)DocDetails;

@property NSString *DocTitle;
@property NSMutableString *DocDetails;
@property (nonatomic, readonly) int wordCount;

@end

NS_ASSUME_NONNULL_END

//
//  LMSDocument.h
//  Documents ObjC
//
//  Created by Lisa Sampson on 2/27/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LMSDocument : NSObject

@property NSString *title;
@property NSString *body;
@property (readonly) int wordCount;

- (instancetype)initWithTitle: (NSString *)title andBody: (NSString *)body;

@end

NS_ASSUME_NONNULL_END

//
//  MUDocument.h
//  Documents
//
//  Created by Moin Uddin on 11/14/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MUDocument : NSObject

-(instancetype) initWithTitle: (NSString *)title body:(NSString *)body;

@property NSString *title;
@property NSString *body;
@property (readonly) int wordCount;

@end

NS_ASSUME_NONNULL_END

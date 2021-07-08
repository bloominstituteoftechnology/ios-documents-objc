//
//  SHDocument.h
//  Documents
//
//  Created by Sean Hendrix on 2/27/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SHDocument : NSObject

-(instancetype) initWithTitle: (NSString *)title body:(NSString *)body;

@property NSString *title;
@property NSString *body;
@property (readonly) int wordCount;

@end

NS_ASSUME_NONNULL_END

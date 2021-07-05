//
//  ABCDocument.h
//  Documents
//
//  Created by Austin Cole on 2/27/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ABCDocument : NSObject

@property NSString *title;
@property NSString *body;
@property(nonatomic) NSUInteger wordCount;

- (instancetype)initWithTitle: (NSString *)title andWith: (NSString *)body;
- (void)setWordCount:(NSString *)documentBody;

@end

NS_ASSUME_NONNULL_END

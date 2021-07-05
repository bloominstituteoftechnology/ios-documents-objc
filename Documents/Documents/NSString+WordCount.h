//
//  NSString+WordCount.h
//  Documents
//
//  Created by Austin Cole on 2/27/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (WordCount)

+ (NSUInteger)wordCount:(NSString *)text;

@end

NS_ASSUME_NONNULL_END

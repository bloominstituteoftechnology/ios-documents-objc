//
//  NSString+WordCount.h
//  Documents Obj-C
//
//  Created by Ivan Caldwell on 3/6/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (WordCount)

// Add an instance method called wordCount that returns an int to the category. In the implementation, this should
// simply return the amount of words in the string.

- (int)wordCount;

@end

NS_ASSUME_NONNULL_END

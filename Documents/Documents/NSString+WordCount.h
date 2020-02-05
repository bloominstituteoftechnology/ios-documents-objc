//
//  NSString+WordCount.h
//  Documents
//
//  Created by John Kouris on 2/4/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <UIKit/UIKit.h>


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (WordCount)

- (NSUInteger)wordCount:(NSString *)text;

@end

NS_ASSUME_NONNULL_END

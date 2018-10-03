//
//  NSString+WordCount.h
//  ios-documents-objc
//
//  Created by Conner on 10/3/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (WordCount)

- (int)wordCount:(NSString *) string;

@end

NS_ASSUME_NONNULL_END

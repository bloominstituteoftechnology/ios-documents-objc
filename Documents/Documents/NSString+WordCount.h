//
//  NSString+WordCount.h
//  Documents
//
//  Created by Bobby Keffury on 2/5/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import <UIKit/UIKit.h>


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (WordCount)

- (NSInteger)checkWordCount:(NSString *)string;

@end

NS_ASSUME_NONNULL_END

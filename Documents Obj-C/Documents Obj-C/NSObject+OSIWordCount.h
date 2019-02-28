//
//  NSObject+OSIWordCount.h
//  Documents Obj-C
//
//  Created by Sergey Osipyan on 2/27/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (OSIWordCount)

- (NSUInteger)wordCount:(NSString *)text;


@end

NS_ASSUME_NONNULL_END

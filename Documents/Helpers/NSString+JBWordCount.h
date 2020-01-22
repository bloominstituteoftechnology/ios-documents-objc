//
//  NSString+JBWordCount.h
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (JBWordCount)

- (NSUInteger)jbWordCount;
- (NSString *)jbFormattedWordCount;

@end


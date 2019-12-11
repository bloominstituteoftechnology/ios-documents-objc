//
//  JLRDocument.h
//  Documents
//
//  Created by Jesse Ruiz on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+JLRWordCount.h"

@interface JLRDocument : NSObject

@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *text;
@property (nonatomic, copy, readonly) NSString *wordCount;

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

@end

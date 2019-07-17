//
//  MGBDocument.h
//  Documents
//
//  Created by Mitchell Budge on 7/17/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+WordCount.h"

NS_ASSUME_NONNULL_BEGIN

@interface MGBDocument : NSObject

@property NSString *title;
@property NSString *text;
@property (nonatomic) NSUInteger *wordCount;

- (instancetype)initWithTitle:(NSString *)title
                     text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END

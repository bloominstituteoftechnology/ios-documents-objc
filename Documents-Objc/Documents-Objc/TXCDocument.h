//
//  TXCDocument.h
//  Documents-Objc
//
//  Created by Thomas Cacciatore on 7/17/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TXCDocument : NSObject

@property NSString *title;
@property NSString *text;
@property (nonatomic) NSInteger wordCount;

- (instancetype)initWithTitle:(NSString *)title
                         text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END

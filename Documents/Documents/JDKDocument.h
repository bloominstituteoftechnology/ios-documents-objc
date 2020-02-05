//
//  JDKDocument.h
//  Documents
//
//  Created by John Kouris on 2/4/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDKDocument : NSObject

- (instancetype)initWithTitle:(NSString *)aTitle text:(NSString *)someText;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *text;
@property (nonatomic) int wordCount;

@end

NS_ASSUME_NONNULL_END

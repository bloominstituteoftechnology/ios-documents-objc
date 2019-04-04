//
//  NYCDocument.h
//  Documents
//
//  Created by Nathanael Youngren on 4/3/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NYCDocument : NSObject

- (instancetype)initWithTitle:(NSString *)title andText:(NSString *)text;

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *text;
@property (nonatomic) int wordCount;

@end

NS_ASSUME_NONNULL_END

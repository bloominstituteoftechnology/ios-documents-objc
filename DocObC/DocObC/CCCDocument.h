//
//  CCCDocument.h
//  DocObC
//
//  Created by Ryan Murphy on 7/17/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCCDocument : NSObject

- (instancetype)initWithTitle:(NSString *)title andText:(NSString *)text;

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *text;
@property (nonatomic) int wordCount;

@end

NS_ASSUME_NONNULL_END


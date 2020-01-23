//
//  CCCDocument.h
//  Documents
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
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


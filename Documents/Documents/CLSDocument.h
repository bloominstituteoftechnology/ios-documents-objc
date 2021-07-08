//
//  CLSDocument.h
//  Documents
//
//  Created by Carolyn Lea on 10/3/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CLSDocument : NSObject

@property NSString *documentTitle;
@property NSString *documentText;
@property (nonatomic) NSUInteger documentWordCount;

-(instancetype)initWithTitle:(NSString *)documentTitle text:(NSString *)documentText;

@end

NS_ASSUME_NONNULL_END

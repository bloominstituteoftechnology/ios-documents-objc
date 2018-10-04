//
//  CGADocument.h
//  ios-documents-objc
//
//  Created by Conner on 10/3/18.
//  Copyright © 2018 Conner. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CGADocument : NSObject

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

@property NSString *title;
@property (nonatomic) NSString *text;
@property (readonly, nonatomic) int documentWordCount;

@end

NS_ASSUME_NONNULL_END

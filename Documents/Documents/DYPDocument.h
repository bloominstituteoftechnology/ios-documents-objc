//
//  DYPDocument.h
//  Documents
//
//  Created by Daniela Parra on 11/14/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYPDocument : NSObject

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText;

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *bodyText;
@property (nonatomic, readonly) int wordCount;

@end

NS_ASSUME_NONNULL_END

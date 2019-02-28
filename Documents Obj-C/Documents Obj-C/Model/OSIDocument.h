//
//  OSIDocument.h
//  Documents Obj-C
//
//  Created by Sergey Osipyan on 2/27/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OSIDocument : NSObject

@property (nonatomic) NSUInteger *count;
@property NSString *title;
@property NSString *text;



- (instancetype)initWithName:(NSString *)text title:(NSString *)title;
- (void)setCount:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END

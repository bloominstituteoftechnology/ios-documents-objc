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

@property NSInteger *count;
@property NSString *title;
@property NSString *text;



- (instancetype)initWithName:(NSString *)text title:(NSString *)title;


@end

NS_ASSUME_NONNULL_END

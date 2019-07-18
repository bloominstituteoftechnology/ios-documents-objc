//
//  HHDocument.h
//  Documents
//
//  Created by Hayden Hastings on 7/17/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHDocument : NSObject

@property NSString *title;
@property NSString *text;
@property (nonatomic) int *wordCount;

- (instancetype)initWithTitle:(NSString *)title
                         text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END

//
//  Document.h
//  Documents
//
//  Created by Bobby Keffury on 2/5/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Document : NSObject

- (instancetype)initWithTitle:(NSString *)aTitle text:(NSString *)someText;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *text;
@property (nonatomic) NSInteger *wordCount;

@end

NS_ASSUME_NONNULL_END

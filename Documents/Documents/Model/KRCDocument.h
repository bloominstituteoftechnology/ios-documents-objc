//
//  KRCDocument.h
//  Documents
//
//  Created by Christopher Aronson on 7/17/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KRCDocument : NSObject

@property NSString *documentTitle;
@property NSString *document;
@property NSString *documentWordCount;

- (instancetype)initWithDocument:(NSString *)document titled:(NSString *)title;


@end

NS_ASSUME_NONNULL_END

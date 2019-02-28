//
//  DRMDocument.h
//  Documents-Objc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DRMDocument : NSObject

@property NSString *title;
@property NSString *bodyText;
@property (readonly) int wordCount;

- (instancetype)initWithTitle: (NSString *)title andBodyText: (NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END

//
//  MJRDocument.h
//  Documents
//
//  Created by Moses Robinson on 3/27/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJRDocument : NSObject

-(instancetype)initWithTitle:(NSString *)title document:(NSString *)document;

@property (nonatomic) NSUInteger wordCount;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *document;

@end

NS_ASSUME_NONNULL_END

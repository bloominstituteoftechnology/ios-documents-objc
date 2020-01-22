//
//  JBDocument.h
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JBDocument : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *body;
@property (readonly, nonatomic) NSUInteger wordCount;

- (instancetype)initWithTitle:(NSString *)title body:(NSString *)body;

@end

//
//  BYDocument.h
//  Document-objc
//
//  Created by Bradley Yin on 10/9/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface BYDocument : NSObject

@property NSString *title;
@property NSString *bodyText;
@property (nonatomic) int wordCount;

- (instancetype)initWithTitle:(NSString *)title body:(NSString *)bodyText;

@end


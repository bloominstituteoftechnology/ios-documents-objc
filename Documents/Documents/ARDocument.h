//
//  ARDocument.h
//  Documents
//
//  Created by Alex Rhodes on 11/6/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ARDocument : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *body;
@property (nonatomic) NSUInteger *wordCount;

- (instancetype) initWithTitle:(NSString *)title body: (NSString *)body;

@end


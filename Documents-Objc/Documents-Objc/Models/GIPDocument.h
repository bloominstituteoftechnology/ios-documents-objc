//
//  GIPDocument.h
//  Documents-Objc
//
//  Created by Gi Pyo Kim on 12/11/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GIPDocument : NSObject

@property NSString *title;
@property NSString *text;
@property (nonatomic) int wordCount;

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

@end


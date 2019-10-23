//
//  MJRDocument.h
//  Documents-ObjectiveC
//
//  Created by Marlon Raskin on 10/9/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MJRDocument : NSObject

@property NSString *title;
@property NSString *text;
@property (readonly) NSUInteger wordCount;


- (instancetype)initWithTitle:(NSString*)title text:(NSString*)text;

@end

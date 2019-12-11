//
//  LSIDocument.h
//  Documents
//
//  Created by Isaac Lyons on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIDocument : NSObject

@property NSString *title;
@property NSString *text;
@property (readonly) int wordCount;

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

@end

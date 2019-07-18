//
//  HSVDocument.h
//  documents-obj
//
//  Created by Hector Steven on 7/17/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HSVDocument : NSObject

@property NSString *title;
@property NSString *body;
@property NSString *count;

- (instancetype) initWithTitle:(NSString *)title body:(NSString *)body;



@end

NS_ASSUME_NONNULL_END

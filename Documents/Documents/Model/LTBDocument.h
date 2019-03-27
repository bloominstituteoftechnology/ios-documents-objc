//
//  LTBDocument.h
//  Documents
//
//  Created by Linh Bouniol on 10/3/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LTBDocument : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, readonly) int wordCount;

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text NS_DESIGNATED_INITIALIZER;


/*
 Since we want the wordCount of the text, and we are not setting anything, we could make the wordCount property "readonly".
 
 When we create a property, getter/setter/instanceVariable are created for us under the hood in .m file.
 */

@end

NS_ASSUME_NONNULL_END

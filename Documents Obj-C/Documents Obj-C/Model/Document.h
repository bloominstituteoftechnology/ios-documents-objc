//
//  Document.h
//  Documents Obj-C
//
//  Created by Ivan Caldwell on 3/7/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Document : NSObject
// Add properties with the appropriate types and property attributes for a document's title, text,
// and word count.
@property NSString *title;
@property NSString *text;
// I have to make this readonly otherwise I will get the
// Writable atomic property 'wordCount' cannot pair a synthesized setter with a user defined getter
@property (readonly) int wordCount;


// Create an initializer that will set the model's title and text, but not the word count.
- (instancetype) initWithTitle:(NSString *)title text:(NSString *)text;


@end

NS_ASSUME_NONNULL_END

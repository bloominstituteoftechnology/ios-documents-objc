//
//  Document.h
//  Documents
//
//  Created by Madison Waters on 2/27/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Document : NSObject

// title, text, word count
@property (nonatomic) NSString *title;
@property (nullable) NSString *text; // We could have an empty document text.
@property (nonatomic) NSInteger wordCount;

- (instancetype)initWithTitle: (NSString *)title text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END

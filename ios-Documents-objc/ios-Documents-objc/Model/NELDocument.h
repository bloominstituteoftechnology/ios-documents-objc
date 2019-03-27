//
//  NELDocument.h
//  ios-Documents-objc
//
//  Created by Nelson Gonzalez on 3/27/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NELDocument : NSObject

//Initializer

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text wordCount:(NSInteger )wordCount;

//Properties
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *text;
@property (nonatomic) NSInteger wordCount;


@end

NS_ASSUME_NONNULL_END

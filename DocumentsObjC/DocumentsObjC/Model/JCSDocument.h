//
//  JCSDocument.h
//  DocumentsObjC
//
//  Created by Lambda_School_Loaner_95 on 4/3/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JCSDocument : NSObject


- (instancetype)initWithTitle: (NSString *)title contents:(NSString *)contents;

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *contents;
@property (nonatomic) int wordCount;


@end

NS_ASSUME_NONNULL_END

//
//  DMODocument.h
//  DMODocuments-Obj-C
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMODocument : NSObject

@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *text;
@property (readonly, nonatomic)int wordCount;

- (instancetype)initWithTitle:(NSString *)title
                         text:(NSString *)text;

@end

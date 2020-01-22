//
//  SKSDocument.h
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKSDocument : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *documentText;
@property (nonatomic) int wordCount;

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

@end


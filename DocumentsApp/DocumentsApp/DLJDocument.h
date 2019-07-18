//
//  DLJDocument.h
//  DocumentsApp
//
//  Created by Diante Lewis-Jolley on 7/17/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DLJDocument : NSObject

@property  NSString *title;
@property  NSString *message;
@property  NSInteger *wordCount;


-(instancetype)initWithTitle:(NSString *)title message:(NSString *)message;

@end

NS_ASSUME_NONNULL_END

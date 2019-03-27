//
//  IIDocument.h
//  Documents Objc
//
//  Created by Ilgar Ilyasov on 11/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIDocument : NSObject

@property (nonatomic) NSString *documentTitle;
@property (nonatomic) NSString *documentBody;
@property (nonatomic) int wordCount;

- (instancetype)initWithTitle: (NSString *)title body:(NSString *)body;

@end

NS_ASSUME_NONNULL_END

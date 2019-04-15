//
//  FCCDocumentsModel.h
//  Documents
//
//  Created by Lambda_School_Loaner_34 on 4/3/19.
//  Copyright © 2019 Frulwinn. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FCCDocuments : NSObject

-(instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText;

@property (nonatomic) NSInteger wordCount;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *bodyText;

@end

NS_ASSUME_NONNULL_END

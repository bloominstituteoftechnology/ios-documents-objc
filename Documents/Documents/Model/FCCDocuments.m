//
//  FCCDocumentsModel.m
//  Documents
//
//  Created by Lambda_School_Loaner_34 on 4/3/19.
//  Copyright © 2019 Frulwinn. All rights reserved.
//

#import "FCCDocuments.h"
#import "NSString+FCCWordCount.h"

@implementation FCCDocuments

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    self = [super init];
    
    if (self != nil) {
        _title = title;
        _bodyText = bodyText;
    }
    return self;
}

@end

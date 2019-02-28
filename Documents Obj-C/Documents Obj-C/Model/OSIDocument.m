//
//  OSIDocument.m
//  Documents Obj-C
//
//  Created by Sergey Osipyan on 2/27/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//
#import "NSObject+OSIWordCount.h"
#import "OSIDocument.h"

@implementation OSIDocument

- (instancetype)initWithName:(NSString *)text title:(NSString *)title
{
    
        self = [super init];
        if (self) {
            _text = text;
            _title = title;
        
        }
        return self;
    
    }
-(void)setCount:(NSString *)bodyText
{
    
    _count = [bodyText wordCount:bodyText];
    
   
}


@end

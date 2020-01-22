//
//  SKSDocument.m
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSDocument.h"
#import "NSString+SKSWordCount.h"

@interface SKSDocument() {

}

@end

@implementation SKSDocument

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    self = [super init];
    if (self) {
        _title = title;
        _documentText = text;
    }
    return self;
}

- (int)wordCount {
    return [self.documentText sks_wordCount];
}


@end

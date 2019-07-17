//
//  KRCDocument.m
//  Documents
//
//  Created by Christopher Aronson on 7/17/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import "KRCDocument.h"
#import "NSString+WordCount.h"

@implementation KRCDocument

- (instancetype)initWithDocument:(NSString *)document titled:(NSString *)title {
    
    if (self = [super init]) {
        _document = document;
        _documentTitle = title;
    }
    
    return self;
}

- (NSUInteger)documentWordCount {
    
    return [_documentTitle krc_wordCount];
}

@end

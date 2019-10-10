//
//  Document.m
//  DocumentsObj-C
//
//  Created by Luqmaan Khan on 10/9/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

#import "Document.h"


@implementation Document

-(instancetype)initWithTitle:(NSString *)title
                        text:(NSString*)text {
    
    if (self = [super init]) {
        _title = title;
        _text = text;
    }
    return self;
}

-(NSUInteger)wordCount {
    return self.text.wordCount;
}

@end

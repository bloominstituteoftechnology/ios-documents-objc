//
//  JCSDocument.m
//  DocumentsObjC
//
//  Created by Lambda_School_Loaner_95 on 4/3/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSDocument.h"
#import "NSString+WordCount.h"

@implementation JCSDocument

- (instancetype)initWithTitle:(NSString *)title contents:(NSString *)contents {
    self = [super init];
    if (self) {
        _title = [title copy];
        _contents = [contents copy];
    }
    return self;
}

/*- (void)setTitle:(NSString *)title {
    _title = title;
}

- (void)setContents:(NSString *)contents {
    _contents = contents;
}*/

- (int)wordCount {
    return [self.contents jcs_wordCount];
}

@end

/*- (void)setWordCount:(int)wordCount {
 
 
 _wordCount = wordCount;
 
 }*/

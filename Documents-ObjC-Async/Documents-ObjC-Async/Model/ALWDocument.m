//
//  ALWDocument.m
//  

#import "ALWDocument.h"
#import "NSString+WordCount.h"

@implementation ALWDocument

- (instancetype)initWithTitle:(NSString *)documentTitle documentText:(NSString *)documentText {
    self = [super init];
    if (self) {
        _documentTitle = documentTitle;
        _documentText = documentText;
    }
    return self;
}

// Getter method
- (NSInteger)wordCount {
    return [self.documentText wordCount];
}

@end

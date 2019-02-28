//
//  ALWDocument.m
//  

#import "ALWDocument.h"
#import "NSString+WordCount.h"

@implementation ALWDocument
    
//// Tell compiler we do want an instance variable
//@synthesize wordCount = _wordCount;
//
//// Setter method
//- (void) setWordCount:(NSInteger *)newWordCount {
//    self.wordCount = newWordCount; // [self setWordCount;newWordCount];
//}

// Getter method
- (NSInteger)wordCount {
    return _bodyText.wordCount;
}
//- (NSInteger)wordCount {
//    return _wordCount;
//}
    
- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText {
    self = [super init];
    if (self != nil) {
        _title = [title copy];
        _bodyText = [bodyText copy];
    }
    return self;
}

@end

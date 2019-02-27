//
//  ALWDocument.m
//  

#import "ALWDocument.h"
#import "NSString+WordCount.h"

@implementation ALWDocument
    
// Tell compiler we do want an instance variable
@synthesize wordCount = _wordCount;
    
// Setter method
- (void) setWordCount:(NSInteger *)newWordCount {
    self.wordCount = newWordCount; // [self setWordCount;newWordCount];
}

// Getter method
- (NSInteger)wordCount {
    return _wordCount;
}
    
- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    self = [super init];
    if (self != nil) {
        _title = title;
        _text = text;
    }
    return self;
}

@end

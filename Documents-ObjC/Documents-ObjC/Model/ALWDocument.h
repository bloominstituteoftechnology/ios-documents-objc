//
//  ALWDocument.h
//  

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALWDocument : NSObject
 
// SWIFT:
// var title: String
// var text: String
// var wordCount: Int
    
@property NSString *title;
@property NSString *bodyText;
@property (readonly) NSInteger *wordCount;
    
// SWIFT:
// init(title: String, text: String)
    
- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText;
    

@end

NS_ASSUME_NONNULL_END

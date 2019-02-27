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
    
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *text;
@property (nonatomic) NSInteger *wordCount;
    
// SWIFT:
// init(title: String, text: String)
    
- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;
    

@end

NS_ASSUME_NONNULL_END

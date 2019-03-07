//
//  ALWDocument.h
//  

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALWDocument : NSObject

@property (nonatomic) NSString *documentTitle;
@property (nonatomic) NSString *documentText;
@property (nonatomic) NSInteger wordCount; // removed * here for test

- (instancetype)initWithTitle:(NSString *)documentTitle documentText:(NSString *)documentText;

@end

NS_ASSUME_NONNULL_END

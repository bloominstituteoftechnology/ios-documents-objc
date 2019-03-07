//
//  ALWDocumentController.h
//  

#import <Foundation/Foundation.h>

@class ALWDocument;

NS_ASSUME_NONNULL_BEGIN

@interface ALWDocumentController : NSObject

@property (nonatomic, readonly) NSArray *documents;

- (void)createDocument:(NSString *)documentTitle documentText:(NSString *)documentText wordCount:(NSInteger)wordCount; // removed * here for test

- (void)updateDocument:(ALWDocument *)document documentTitle:(NSString *)documentTitle documentText:(NSString *)documentText wordCount:(NSInteger)wordCount; // removed * here for test

- (void)deleteDocument:(ALWDocument *)document;

- (void)addDocument:(ALWDocument *)document;

@end

NS_ASSUME_NONNULL_END

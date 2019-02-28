//
//  ModelController.h
//

#import <Foundation/Foundation.h>
#import "ALWDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface ModelController : NSObject

// Property to hold an array of documents
@property (nonatomic) NSMutableArray *documents;
    
// Create a document
- (ALWDocument *)createDoc:(NSString *)title text:(NSString *)text wordCount:(NSInteger *)wordCount;
    
// Update a document
- (ALWDocument *)updateDoc:(ALWDocument *)document title:(NSString *)title text:(NSString *)text wordCount:(NSInteger *)wordCount;
    
// Delete a document
- (ALWDocument *)deleteDoc:(ALWDocument *)document;
    

@end

NS_ASSUME_NONNULL_END

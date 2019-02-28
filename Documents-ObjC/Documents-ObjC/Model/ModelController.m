//
//  ModelController.m
//

#import "ModelController.h"
#import "ALWDocument.h"

@implementation ModelController
    
    - (instancetype)init {
        self = [super init];
        if (self != nil) {
            
            // Initialize documents array with an empty array
            _documents = [NSMutableArray arrayWithObjects: nil];
        }
        return self;
    }
    
// Create a document
- (void)createDoc:(NSString *)title bodyText:(NSString *)bodyText {
    // DO I ADD THIS? wordCount:(NSInteger *)wordCount
    
    // SWIFT:
    // let newDoc = Document(title: title, bodyText: bodyText, wordCount: wordCount)
    ALWDocument *newDocument = [[ALWDocument alloc] initWithTitle:title bodyText:bodyText];
    
    [_documents addObject: newDocument];
    
    //return newDoc
    //return newDocument;
}
    
// Update a document
- (void)updateDoc:(ALWDocument *)document title:(NSString *)title bodyText:(NSString *)bodyText {
    // DO I ADD THIS? wordCount:(NSInteger *)wordCount
    
    document.title = title;
    document.bodyText = bodyText;
    
    //return document;
}
 
// Delete a document
- (void)deleteDoc:(ALWDocument *)document {
    
    [_documents removeObject: document];
    
    //return _documents;
}
    

@end

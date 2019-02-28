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
- (ALWDocument *)createDoc:(NSString *)title text:(NSString *)text {
    // DO I ADD THIS? wordCount:(NSInteger *)wordCount
    
    // SWIFT:
    // let newDoc = Document(title: title, text: text, wordCount: wordCount)
    ALWDocument *newDocument = [[ALWDocument alloc] initWithTitle:title text:text];
    
    [_documents addObject: newDocument];
    
    //return newDoc
    return newDocument;
}
    
// Update a document
- (ALWDocument *)updateDoc:(ALWDocument *)document title:(NSString *)title text:(NSString *)text {
    // DO I ADD THIS? wordCount:(NSInteger *)wordCount
    
    document.title = title;
    document.text = text;
    
    return document;
}
 
// Delete a document
- (ALWDocument *)deleteDoc:(ALWDocument *)document {
    
}
    

@end

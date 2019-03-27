//
//  ALWDocumentController.m
//  

#import "ALWDocumentController.h"
#import "ALWDocument.h"

@interface ALWDocumentController ()

@property (nonatomic) NSMutableArray *internalDocuments;

@end

@implementation ALWDocumentController

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

// Define a getter
- (NSArray *)documents {
    return [self.internalDocuments copy];
}

- (void)createDocument:(NSString *)documentTitle documentText:(NSString *)documentText wordCount:(NSInteger)wordCount { // removed * here for test
    
    ALWDocument *newDocument = [[ALWDocument alloc] initWithTitle:documentTitle documentText:documentText];
    
    newDocument.wordCount = wordCount;
    
    [self.internalDocuments addObject:newDocument];
    
}

- (void)updateDocument:(ALWDocument *)document documentTitle:(NSString *)documentTitle documentText:(NSString *)documentText wordCount:(NSInteger)wordCount { // removed * here for test
    
    document.documentTitle = documentTitle;
    document.documentText = documentText;
    document.wordCount = wordCount;
    
    // replaceObjectAtIndex:index with Object:newDocument
}

- (void)deleteDocument:(ALWDocument *)document {
    [self.internalDocuments removeObject:document];
}

- (void)addDocument:(ALWDocument *)document {
    [self.internalDocuments addObject:document];
}

@end

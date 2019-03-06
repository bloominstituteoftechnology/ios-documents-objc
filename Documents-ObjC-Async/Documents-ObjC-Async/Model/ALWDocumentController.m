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

- (void)createDocument:(NSString *)documentTitle documentText:(NSString *)documentText wordCount:(NSInteger *)wordCount {
    
    ALWDocument *newDocument = [[ALWDocument alloc] initWithTitle:documentTitle documentText:documentText];
    
    newDocument.wordCount = wordCount;
    
    [self.internalDocuments addObject:newDocument];
    
}

- (void)updateDocument:(ALWDocument *)document documentTitle:(NSString *)documentTitle documentText:(NSString *)documentText wordCount:(NSInteger *)wordCount {
    
    document.documentTitle = documentTitle;
    document.documentText = documentText;
    document.wordCount = wordCount;
}

- (void)deleteDocument:(ALWDocument *)document {
    [self.internalDocuments removeObject:document];
}

@end

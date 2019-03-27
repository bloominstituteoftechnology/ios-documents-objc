//
//  LTBDocumentController.m
//  Documents
//
//  Created by Linh Bouniol on 10/3/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import "LTBDocumentController.h"
#import "LTBDocument.h"

@interface LTBDocumentController () { // with {}, everything in there will be an instance variable
    
    // In Obj-C, arrays, dictionaries, and strings are non-mutable by default. However, they each have mutable variants as subclasses. Here, we want the internal _documents array to be mutable so we can change it, but from the public's point of view (when it's used by other classes), they will see a non-mutable array that they cannot change.
    
    NSMutableArray *_documents;
}

@end

@implementation LTBDocumentController

- (instancetype)init
{
    if (self = [super init]) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray<LTBDocument *> *)documents
{
    return _documents.copy;
}

- (void)createDocumentWithTitle:(NSString *)title text:(NSString *)text
{
    LTBDocument *document = [[LTBDocument alloc] initWithTitle:title text:text];
    [_documents addObject:document]; // can only addObject to a NSMutableArray (line 16), using self.documents refers to the NSArray in header file
    
    // save
}

- (void)updateDocument:(LTBDocument *)document title:(NSString *)title text:(NSString *)text
{
    // since this is a class, we can update the values directly, (ObjC only has class, no struct)
    document.title = title;
    document.text = text;
    
    // save

}

- (void)deleteDocument:(LTBDocument *)document
{
    // * is the pointer and it points to the location in memory where the document actually is.
    // Here, we ask the array to remove any object that shares that location.
    [_documents removeObjectIdenticalTo:document];
    
    // save
}

@end


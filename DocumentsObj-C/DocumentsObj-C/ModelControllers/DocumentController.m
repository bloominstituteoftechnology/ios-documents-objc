//
//  DocumentController.m
//  DocumentsObj-C
//
//  Created by Luqmaan Khan on 10/9/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

#import "DocumentController.h"
#import "Document.h"
@interface DocumentController()
@end


@implementation DocumentController
- (instancetype)init {
    self = [super init];
    if (self) {
        _documents = [@[] mutableCopy];
    }
     return self;
}
   
    
-(void)addDocumentWithTitle:(NSString *)title
                andText:(NSString *)text {
    Document *document = [[Document alloc] initWithTitle:title text:text];
    [self.documents addObject:document];
    
}

-(void)update:(Document *)document
    withTitle:(NSString *)title
      andText:(NSString *)text {
    document.title = title;
    document.text = text;
}

-(void)deleteDocument:(Document *)document {
    [self.documents removeObject:document];
}

-(Document *)documentAtIndex:(NSUInteger)index {
    return [self.documents objectAtIndex:index];
}

@end

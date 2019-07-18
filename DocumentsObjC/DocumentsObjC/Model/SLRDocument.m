//
//  SLRDocument.m
//  DocumentsObjC
//
//  Created by Sameera Roussi on 7/17/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

#import "SLRDocument.h"

@implementation SLRDocument
-(instancetype)initWithDocumentName: (NSString *) documentName
                          documentWords: (NSString *) documentWords {
    
    if(self = [super init]) {
        _documentName = documentName;
        _documentWords = documentWords;
    }
    
    return self;
}
@end

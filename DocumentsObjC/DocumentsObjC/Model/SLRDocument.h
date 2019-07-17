//
//  SLRDocument.h
//  DocumentsObjC
//
//  Created by Sameera Roussi on 7/17/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SLRDocument : NSObject

@property NSString *documentName;
@property NSString *documentWords;

-(instancetype)initWithDocumentName: (NSString *) documentName
                          documentWords: (NSString *) documentWords;

@end

NS_ASSUME_NONNULL_END

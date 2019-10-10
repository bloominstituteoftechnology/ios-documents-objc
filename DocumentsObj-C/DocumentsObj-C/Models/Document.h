//
//  Document.h
//  DocumentsObj-C
//
//  Created by Luqmaan Khan on 10/9/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+WordCount.h"

@class Document;
@interface Document : NSObject

@property NSString *title;
@property NSString *text;
//read only becuase its not being saved with the object
@property (readonly) NSUInteger wordCount;




-(instancetype)initWithTitle:(NSString *)title
                        text:(NSString*)text;


@end



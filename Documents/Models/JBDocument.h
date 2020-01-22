//
//  JBDocument.h
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JBDocument : NSObject

@property NSString *title;
@property NSString *body;
@property (readonly) uint wordCount;

@end

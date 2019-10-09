//
//  NSString+WordCount.h
//  DocumentsObj-C
//
//  Created by Luqmaan Khan on 10/9/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//
#import "TargetConditionals.h"
#if !TARGET_OS_IOS
#import <AppKit/AppKit.h>
#endif

#import <Foundation/Foundation.h>



@interface NSString (WordCount)

-(int)wordCount:(NSString*)word;


@end



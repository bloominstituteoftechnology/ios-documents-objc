//
//  REPDocument.h
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "REPDocument+CoreDataClass.h"

@interface REPDocument (Convenience)

@property (readonly) NSUInteger wordCount;

- (instancetype)initWithTitle:(NSString*)title andText:(NSString*)text onContext:(NSManagedObjectContext*)context;


@end

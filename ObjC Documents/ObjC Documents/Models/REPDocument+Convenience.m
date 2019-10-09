//
//  REPDocument.m
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPDocument+Convenience.h"
#import "NSString+WordCount.h"
#import "REPDocument+CoreDataClass.h"

@implementation REPDocument (Convenience)

- (instancetype)initWithTitle:(NSString*)title andText:(NSString*)text onContext:(NSManagedObjectContext*)context {
	if (self = [super initWithContext:context]) {
		self.title = title;
		self.text = text;
		self.id = [NSUUID UUID];
	}
	return self;
}

- (NSUInteger)wordCount {
	return self.text.wordCount;
}


@end

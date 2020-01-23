//
//  Document+SKSConvenience.m
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "Document+CoreDataClass.h"
#import "SKSCoreDataStack.h"
#import "NSString+SKSWordCount.h"
@implementation Document (SKSConvenience)

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    NSManagedObjectContext *context = [[SKSCoreDataStack shared] mainContext];

    self = [self initWithContext:context];

    if (self) {
        self.title = title;
        self.text = text;
    }
    return self;
}

- (int16_t)wordCount {
    return [self.text sks_wordCount];
}

@end

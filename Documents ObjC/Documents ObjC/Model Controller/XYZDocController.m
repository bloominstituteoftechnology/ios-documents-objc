//
//  XYZDocController.m
//  Documents ObjC
//
//  Created by Iyin Raphael on 2/27/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "XYZDocController.h"
#import "XYZDocument.h"

@implementation XYZDocController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}


- (void)createDoc:(NSString *)DocTitle DocDetails:(NSString *)DocDetails {
    XYZDocument *document = [[XYZDocument alloc] initDoc:DocTitle DocDetails:DocDetails];
    [self.documents addObject:document];
}

- (void)updateDoc:(XYZDocument *)document Doctitle:(NSString *)DocTitle DocDetails:(NSString *)DocDetails {
    [document setDocTitle:DocTitle];
    [document setDocDetails:DocDetails];
}


@end

//
//  XYZDocumentsViewController.m
//  Documents ObjC
//
//  Created by Iyin Raphael on 2/27/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "XYZDocumentsViewController.h"
#import "XYZDocController.h"

@interface XYZDocumentsViewController ()


@end

@implementation XYZDocumentsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.docController = [[XYZDocController alloc] init];
    _doc = [[XYZDocument alloc]init];
}



- (IBAction)save:(id)sender {
}
@end

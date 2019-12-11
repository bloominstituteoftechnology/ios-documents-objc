//
//  LSIDocumentDetailViewController.m
//  Documents
//
//  Created by Isaac Lyons on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIDocumentDetailViewController.h"
#import "LSIDocument.h"

@interface LSIDocumentDetailViewController ()

@end

@implementation LSIDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (self.document) {
        [self setTitle:[self.document title]];
        [self.titleTextField setText:[self.document title]];
        
        [self.textView setText:[self.document text]];
    } else {
        [self.textView setText:nil];
    }
}

@end

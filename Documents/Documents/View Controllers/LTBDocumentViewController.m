//
//  LTBDocumentViewController.m
//  Documents
//
//  Created by Linh Bouniol on 10/3/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import "LTBDocumentViewController.h"

@interface LTBDocumentViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation LTBDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textView.layer.borderColor = [UIColor colorWithWhite:220.0/255.0 alpha:1.0].CGColor;
    self.textView.layer.borderWidth = 0.5;
    self.textView.layer.cornerRadius = 5.0;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

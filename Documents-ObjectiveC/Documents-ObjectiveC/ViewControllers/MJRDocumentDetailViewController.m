//
//  MJRDocumentDetailViewController.m
//  Documents-ObjectiveC
//
//  Created by Marlon Raskin on 10/9/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRDocumentDetailViewController.h"

@interface MJRDocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation MJRDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textView.layer.cornerRadius = 10;
    self.textView.layer.borderColor = [[UIColor secondaryLabelColor] colorWithAlphaComponent:0.4].CGColor;
    self.textView.layer.borderWidth = 0.7;
}

@end

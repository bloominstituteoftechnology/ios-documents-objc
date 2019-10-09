//
//  DocumentDetailViewController.m
//  Documents-ObjectiveC
//
//  Created by Marlon Raskin on 10/9/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "DocumentDetailViewController.h"


@interface DocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *docNameTextField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation DocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textView.layer.cornerRadius = 10;
    self.textView.layer.borderColor = [[UIColor secondaryLabelColor] colorWithAlphaComponent:0.4].CGColor;
    self.textView.layer.borderWidth = 0.7;
}

@end

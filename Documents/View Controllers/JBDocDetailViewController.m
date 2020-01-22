//
//  JBDocDetailViewController.m
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBDocDetailViewController.h"

@interface JBDocDetailViewController ()

@property (unsafe_unretained, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *titleTextField;
@property (unsafe_unretained, nonatomic) IBOutlet UITextView *bodyTextView;

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender;

@end

@implementation JBDocDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
}
@end

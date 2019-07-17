//
//  HHDetailDocumentViewController.m
//  Documents
//
//  Created by Hayden Hastings on 7/17/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import "HHDetailDocumentViewController.h"

@interface HHDetailDocumentViewController ()

// Outlets
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation HHDetailDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// Actions
- (IBAction)saveButtonTapped:(id)sender {
}

@end

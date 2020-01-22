//
//  SKSDetailDocumentViewController.m
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSDetailDocumentViewController.h"

@interface SKSDetailDocumentViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordsLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

- (void)updateViews;

@end

@implementation SKSDetailDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateViews];
}

- (void)updateViews {
    [[self.documentTextView layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[self.documentTextView layer] setBorderWidth:2];
    [[self.documentTextView layer] setCornerRadius:10];
}

- (IBAction)saveButtonTapped:(id)sender {
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

//
//  REPDocumentDetailViewController.m
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPDocumentDetailViewController.h"

@interface REPDocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation REPDocumentDetailViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)saveButtonPressed:(UIBarButtonItem *)sender {
}

- (void)textViewDidChange:(UITextView *)textView {
	NSLog(@"textview now reads: %@", textView.text);
}

@end

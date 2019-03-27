//
//  DetailViewController.m
//  Documents
//
//  Created by Madison Waters on 2/27/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

@end

@implementation DetailViewController

- (IBAction)saveDocument:(id)sender {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    
    if(!self.isViewLoaded || !self.document) { return; }
    
    self.title = self.document.title ?: @"Create New Document";
    self.titleTextField.text = self.document.title;
    self.documentTextView.text = self.document.text;
    
    //self.wordCountLabel.text = self.document
    // WordCount here which will need help converting to string and interpolating
}

@end

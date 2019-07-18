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
    [self updateView];
    [self updateWordCount];
    [[self textView] setDelegate:self];
}

- (void)textViewDidChange:(UITextView *)textView {
    [self updateWordCount];
}

- (void)updateView {
    if (!self.isViewLoaded || self.document) { return; }
    
    self.title = self.document.title;
    self.countLabel.text = [NSString stringWithFormat:@"%d words", self.document.text.wordCount];
    self.textField.text = self.document.title;
    self.textView.text = self.document.text;
}

- (void)updateWordCount {
    if ([self.textView.text isEqualToString:@""]) {
        self.countLabel.text = @"0 words";
    } else {
        self.countLabel.text = [NSString stringWithFormat:@"%d words", self.textView.text.wordCount];
    }
}

// Actions
- (IBAction)saveButtonTapped:(id)sender {
    NSString *title = self.textField.text;
    NSString *text = self.textView.text;
    
    if (!self.document) {
        [self.documentController createDocumentWithTitle:title text:text];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end

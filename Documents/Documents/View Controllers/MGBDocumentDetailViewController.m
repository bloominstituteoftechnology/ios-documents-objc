//
//  MGBDocumentDetailViewController.m
//  Documents
//
//  Created by Mitchell Budge on 7/17/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MGBDocumentDetailViewController.h"

@interface MGBDocumentDetailViewController ()

@end

@implementation MGBDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    self.bodyTextView.delegate = self;
}

- (void)textViewDidChange:(UITextView *)textView
{
    self.numberOfWordsLabel.text = [NSString stringWithFormat:@"%lu words", (unsigned long)self.bodyTextView.text.wordCount];
}

- (void)updateViews
{
    self.title = self.document.title;
    self.titleTextField.text = self.document.title;
    self.bodyTextView.text = self.document.text;
    self.numberOfWordsLabel.text = [NSString stringWithFormat:@"%lu words", (unsigned long)self.document.text.wordCount];
}

- (IBAction)saveButtonPressed:(id)sender {
    if (!_document) {
        [_documentController createDocumentWithTitle: _titleTextField.text andText:_bodyTextView.text];
    } else {
        [_documentController updateDocument:_document withTitle:_titleTextField.text andText:_bodyTextView.text];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end

//
//  JLCAddDocumentViewController.m
//  iOS-Documents-objc
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import "JLCAddDocumentViewController.h"
#import "NSString+JLCWordCount.h"

@interface JLCAddDocumentViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numOfWordsLabel;
@property (weak, nonatomic) IBOutlet UITextField *docTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *docTextView;

@end

@implementation JLCAddDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.docTextView.delegate = self;
    [self updateViews];
    if (self.document) {
        self.docTitleTextField.text = self.document.title;
        self.docTextView.text = self.document.text;
        self.numOfWordsLabel.text = [NSString stringWithFormat:@"%d words", [self.document.text wordCount]];
    }
}

- (void)updateViews {
    int wordCount = [self.docTextView.text wordCount];
    self.numOfWordsLabel.text = [NSString stringWithFormat:@"%d words", wordCount];
}

- (void)textViewDidChange:(UITextView *)textView {
    [self updateViews];
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    if (self.document && ![self.docTitleTextField.text  isEqual: @""] && ![self.docTextView.text  isEqual: @""]) {
        
        [self.documentController updateDocument:self.document title:self.docTitleTextField.text text:self.docTextView.text];
         
    } else if (![self.docTitleTextField.text  isEqual: @""] && ![self.docTextView.text  isEqual: @""]) {
        [self.documentController createDocumentWithTitle:self.docTitleTextField.text
                                                    text:self.docTextView.text];
    }
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end

//
//  ARDocumentViewController.m
//  Documents
//
//  Created by Alex Rhodes on 11/6/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

#import "ARDocumentViewController.h"
#import "NSString+ARWordCount.h"

@interface ARDocumentViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordsLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;


@end

@implementation ARDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    self.bodyTextView.delegate = self;
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    NSString *title = self.titleTextField.text;
    NSString *body = self.bodyTextView.text;
    if (!self.document) {
    [self.controller createDocumentWithTitle:title body:body];
    } else {
        [self.controller  updateDocumentWith:self.document title:title body:body];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void) updateViews {
    if (self.isViewLoaded && self.document != nil) {
        NSString *wordCountString = [NSString stringWithFormat:@"%lu words", (unsigned long) self.document.wordCount];
        self.title = self.document.title;
        self.wordsLabel.text = wordCountString;
        self.titleTextField.text = self.document.title;
        self.bodyTextView.text = self.document.body;
    }
}

- (void) setDocument:(ARDocument *)document {
    if (document != _document) {
        _document = document;
        [self updateViews];
    }
}

- (void)textViewDidChange:(UITextView *)textView {
    NSString *wordCountString = [NSString stringWithFormat:@"%lu words", [textView.text wordCount]];
    self.wordsLabel.text = wordCountString;
}

@end

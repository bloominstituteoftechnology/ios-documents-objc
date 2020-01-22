//
//  JBDocDetailViewController.m
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBDocDetailViewController.h"
#import "JBDocument.h"
#import "JBDocumentController.h"
#import "NSString+JBWordCount.h"

@interface JBDocDetailViewController ()

@property (unsafe_unretained, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *titleTextField;
@property (unsafe_unretained, nonatomic) IBOutlet UITextView *bodyTextView;

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender;

- (void)saveDocument;
- (void)updateViews;
- (void)updateWordCount;

@end

@implementation JBDocDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self updateViews];
}

- (void)updateViews {
    if (self.document) {
        self.title = self.document.title;
        self.titleTextField.text = self.document.title;
        self.bodyTextView.text = self.document.body;
    }

    [self updateWordCount];
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    [self saveDocument];
}

- (void)saveDocument {
    if (([self.titleTextField.text length] == 0) || ([self.bodyTextView.text length] == 0)) {
        return;
    }

    if (self.document) {
        [self.documentController updateDocument:self.document
                                   withNewTitle:self.titleTextField.text
                                           body:self.bodyTextView.text];
    } else {
        [self.documentController createDocumentWithTitle:self.titleTextField.text
                                                    body:self.bodyTextView.text];
    }

    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)updateWordCount {
    self.wordCountLabel.text = self.bodyTextView.text.jbFormattedWordCount;
}

@end

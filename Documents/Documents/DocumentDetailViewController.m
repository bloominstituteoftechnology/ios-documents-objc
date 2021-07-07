//
//  DocumentDetailViewController.m
//  Documents
//
//  Created by Daniela Parra on 11/14/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DocumentDetailViewController.h"
#import "DYPDocumentController.h"
#import "DYPDocument.h"
#import "NSString+WordCount.h"

@interface DocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

- (void)updateViews;

@end

@implementation DocumentDetailViewController

- (void)viewDidLoad
{
    [self.bodyTextView setDelegate:self];
    [self updateViews];
}

- (void)textViewDidChange:(UITextView *)textView
{
    NSString *wordCountString = [NSString stringWithFormat:@"%d words", [self.bodyTextView.text wordCount]];
    [self.wordCountLabel setText:wordCountString];
}

- (IBAction)save:(id)sender {
    
    if (!self.document) {
        [self.documentController createDocumentWithTitle:self.titleTextField.text bodyText:self.bodyTextView.text];
    } else {
        [self.documentController updateDocument:self.document title:self.titleTextField.text bodyText:self.bodyTextView.text];
    }
}

- (void)updateViews
{
    if (self.document) {
        [self.navigationController setTitle:self.document.title];
        [self.titleTextField setText:self.document.title];
        [self.bodyTextView setText:self.document.bodyText];
        NSString *wordCountString = [NSString stringWithFormat:@"%d", self.document.wordCount];
        [self.wordCountLabel setText:wordCountString];
    }
}

- (void)setDocument:(DYPDocument *)document
{
    _document = document;
    [self updateViews];
}

@end

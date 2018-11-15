//
//  IIDocumentDetailViewController.m
//  Documents Objc
//
//  Created by Ilgar Ilyasov on 11/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "IIDocumentDetailViewController.h"
#import "IIDocumentController.h"
#import "IIDOcument.h"
#import "NSString+WordCount.h"

@interface IIDocumentDetailViewController ()

@end

@implementation IIDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self documentBodyTextView] setDelegate:self];
    
    if (self.isViewLoaded) {
        [self updateViews];
        [self updateWordCountLabel];
    }
}

- (IBAction)saveButtonTapped:(id)sender
{
    if (self.document) {
        [[self documentController] updateDocument:self.document title:self.documentTitleTextField.text body:self.documentBodyTextView.text];
    } else {
        [[self documentController] createWithTitle:self.documentTitleTextField.text body:self.documentBodyTextView.text];
    }
    [[self navigationController] popViewControllerAnimated:YES];
}

#pragma Update Views

- (void)updateViews
{
    if (self.document) {
        self.documentTitleTextField.text = self.document.documentTitle;
        self.documentBodyTextView.text = self.document.documentBody;
        self.navigationItem.title = self.document.documentTitle;
    } else {
        [[self navigationItem] setTitle:@"New Document"];
    }
}

- (void)updateWordCountLabel
{
    if ([self.documentBodyTextView.text isEqualToString:@""]) {
        self.wordCountLabel.text = @"0 words";
    } else {
        self.wordCountLabel.text = [NSString stringWithFormat:@"%d words", self.documentBodyTextView.text.wordCount];
    }
}

#pragma UITextViewDelegate

- (void)textViewDidChange:(UITextView *)textView
{
    [self updateWordCountLabel];
}

- (void)setDocument:(IIDocument *)document
{
    _document = document;
    [self updateViews];
}

@end

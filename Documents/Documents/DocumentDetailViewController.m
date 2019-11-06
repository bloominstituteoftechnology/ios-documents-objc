//
//  DocumentDetailViewController.m
//  Documents
//
//  Created by Michael Stoffer on 11/5/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import "DocumentDetailViewController.h"
#import "DocumentController.h"
#import "Document.h"

@interface DocumentDetailViewController ()

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(nonnull NSString *)text;

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *textTextView;

@end

@implementation DocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(nonnull NSString *)text
{
    self.wordCountLabel.text = [textView.text stringByReplacingCharactersInRange:range withString:text];
    return true;
}

#pragma mark - IBActions and Methods

- (IBAction)save:(UIBarButtonItem *)sender {
    BOOL isNewDocument = (self.document == nil);
    
    if (isNewDocument) {
        Document *document = [[Document alloc] initWithTitle:self.titleTextField.text text:self.textTextView.text wordCount:self.wordCountLabel.text];
        [self.documentController addDocument:document];
    } else {
        self.document.title = self.titleTextField.text;
        self.document.text = self.textTextView.text;
        self.document.wordCount = self.wordCountLabel.text;
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)updateViews
{
    self.title = self.document.title ?: @"New Document";
    if (!self.isViewLoaded || !self.document) { return; }
    
    self.titleTextField.text = self.document.title;
    self.textTextView.text = self.document.text;
    self.wordCountLabel.text = self.document.wordCount;
}

- (void)setDocument:(Document *)document
{
    if (_document != document) {
        _document = document;
        [self updateViews];
    }
}

@end

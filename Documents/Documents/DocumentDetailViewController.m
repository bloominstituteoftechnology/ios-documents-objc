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

#import "NSString+WordCount.h"

@interface DocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *textTextView;

@end

@implementation DocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.textTextView setDelegate:self];
    [self updateViews];
}

#pragma mark - IBActions and Methods

- (IBAction)save:(UIBarButtonItem *)sender {
    BOOL isNewDocument = (self.document == nil);
    
    if (isNewDocument) {
        Document *document = [[Document alloc] initWithTitle:self.titleTextField.text text:self.textTextView.text];
        [self.documentController addDocument:document];
    } else {
        self.document.title = self.titleTextField.text;
        self.document.text = self.textTextView.text;
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)textViewDidChange:(UITextView *)textView
{
    self.wordCountLabel.text = [NSString stringWithFormat:@"%lu words", self.textTextView.text.wordCount];
}

- (void)updateViews
{
    self.title = self.document.title ?: @"New Document";
    if (!self.isViewLoaded || !self.document) { return; }
    
    self.titleTextField.text = self.document.title;
    self.textTextView.text = self.document.text;
    self.wordCountLabel.text = [NSString stringWithFormat:@"%lu words", self.textTextView.text.wordCount];
}

- (void)setDocument:(Document *)document
{
    if (_document != document) {
        _document = document;
        [self updateViews];
    }
}

@end

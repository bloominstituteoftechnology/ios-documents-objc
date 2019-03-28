//
//  MJRDocumentDetailViewController.m
//  Documents
//
//  Created by Moses Robinson on 3/27/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import "MJRDocumentDetailViewController.h"
#import "MJRDocumentController.h"
#import "MJRDocument.h"
#import "NSString+WordCount.h"

@interface MJRDocumentDetailViewController ()

@property (strong, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) IBOutlet UITextView *documentTextView;

@end

@implementation MJRDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.documentTextView.delegate = self;
    [self updateViews];
}

- (IBAction)save:(id)sender {
    
    NSString *title = self.titleTextField.text;
    NSString *bodyText = self.documentTextView.text;
    
    if (!self.document) {
        
        [self.documentController createDocWithTitle:title bodyText:bodyText];
    } else {
        
        [self.documentController updateDoc:self.document title:title bodyText:bodyText];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)updateViews
{
    if (!self.isViewLoaded || !self.document) { return; }
    
    self.title = self.document.title;
    NSString *wordCountString = [NSString stringWithFormat:@"%lu words", (unsigned long)self.document.wordCount];
    
    self.wordCountLabel.text = wordCountString;
    self.titleTextField.text = self.document.title;
    self.documentTextView.text = self.document.bodyText;
}

- (void)textViewDidChange:(UITextView *)textView
{
    NSString *wordCountString = [NSString stringWithFormat:@"%lu words", [textView.text wordCount]];
    self.wordCountLabel.text = wordCountString;
}

- (void)setDocument:(MJRDocument *)document
{
    if (document != _document) {
        
        _document = document;
        [self updateViews];
    }
}

@end

//
//  LTBDocumentViewController.m
//  Documents
//
//  Created by Linh Bouniol on 10/3/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import "LTBDocumentViewController.h"
#import "LTBDocumentController.h"
#import "LTBDocument.h"
#import "NSString+LTBWordCount.h"

@interface LTBDocumentViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView; // can't have an action fot text view so need to adopt UITextViewDelegate

//- (IBAction)save:(id)sender; // if action is private, don't need it in here, can implement it directly below

@end

@implementation LTBDocumentViewController

- (void)setDocument:(LTBDocument *)document
{
    _document = document;
    [self updateViews];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textView.layer.borderColor = [UIColor colorWithWhite:220.0/255.0 alpha:1.0].CGColor;
    self.textView.layer.borderWidth = 0.5;
    self.textView.layer.cornerRadius = 5.0;
    
//    self.textView.delegate = self // set this here or in storyboard
    
    [self updateViews];
}

- (IBAction)save:(id)sender
{
    NSString *title = self.textField.text;
    NSString *text = self.textView.text;
    
    if (title.length == 0 || text.length == 0) return;
    
    if (self.document) {
        [self.documentController updateDocument:self.document title:title text:text];
    } else {
        [self.documentController createDocumentWithTitle:title text:text];
    }
    
    [self.navigationController popViewControllerAnimated:TRUE];
}

- (void)textViewDidChange:(UITextView *)textView
{
    self.wordCountLabel.text = [NSString stringWithFormat:@"%i", [textView.text wordCount]];
}

- (void)updateViews
{
    if (!self.isViewLoaded) return;
    
    if (self.document) {
        self.navigationItem.title = self.document.title;
        self.textField.text = self.document.title;
        self.textView.text = self.document.text;
        [self textViewDidChange:self.textView];
    } else {
        self.navigationItem.title = @"Create Document";
    }
}

@end

//
//  NELAddDocumentViewController.m
//  ios-Documents-objc
//
//  Created by Nelson Gonzalez on 3/27/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

#import "NELAddDocumentViewController.h"
#import "NELDocumentController.h"
#import "NELDocument.h"


@interface NELAddDocumentViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *wordTextView;

@end

@implementation NELAddDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateViews];
    [self updateWordCountLabel];
    [[self wordTextView] setDelegate:self];
}

- (void)updateViews
{
    if (!self.isViewLoaded || !self.documents) { return;}
    
    self.title = self.documents.title;
    self.titleTextField.text = self.documents.title;
    self.wordTextView.text = self.documents.text;
    self.countLabel.text = [NSString stringWithFormat:@"%d words", self.documents.text.wordCount];
}

- (void)updateWordCountLabel
{
    if ([self.wordTextView.text isEqualToString:@""]) {
        self.countLabel.text = @"0 words";
    } else {
        self.countLabel.text = [NSString stringWithFormat:@"%d words", self.wordTextView.text.wordCount];
    }
}

- (void)textViewDidChange:(UITextView *)textView
{
    [self updateWordCountLabel];
}


- (IBAction)saveBarButtonPressed:(id)sender {
    
    NSString *title = self.titleTextField.text;
    NSString *text = self.wordTextView.text;
  //  int wordCount = self.countLabel.text;
    
    if (!self.documents) {
      
        [self.documentController createDocumentWithTitle:title text:text];
       
    } else {
        //we want to update the existing task

        [self.documentController updateDocument:self.documents withTitle:title text:text];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}



- (void)setDocuments:(NELDocument *)documents
{
    if (documents != _documents) {
        _documents = documents;
        [self updateViews];
    }
}

@end

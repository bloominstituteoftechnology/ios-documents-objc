//
//  MJRDocumentDetailViewController.m
//  Documents-ObjectiveC
//
//  Created by Marlon Raskin on 10/9/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRDocumentDetailViewController.h"
#import "MJRDocumentController.h"
#import "MJRDocument.h"
#import "NSString+MJRWordCount.h"

@interface MJRDocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation MJRDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textView.layer.cornerRadius = 10;
    self.textView.layer.borderColor = [[UIColor secondaryLabelColor] colorWithAlphaComponent:0.4].CGColor;
    self.textView.layer.borderWidth = 0.7;
    [self updateViews];
    self.textView.delegate = self;
}


- (IBAction)saveTapped:(id)sender {
    BOOL isNewDocument = self.document == nil;

    MJRDocument *document = self.document ? : [[MJRDocument alloc] init];
    document.title = self.nameTextField.text;
    document.text = self.textView.text;

    if (isNewDocument) {
        [self.controller addDocument:document];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)updateViews {
    if (!self.isViewLoaded || !self.document) { return; }

    self.title = self.document.title;
    self.nameTextField.text = self.document.title;
    self.textView.text = self.document.text;
    self.wordCountLabel.text = [NSString stringWithFormat:@"%lu", [self.textView.text wordCount]];
}


- (void)textViewDidChange:(UITextView *)textView {
    self.wordCountLabel.text = [NSString stringWithFormat:@"%lu", [self.textView.text wordCount]];
}

@end

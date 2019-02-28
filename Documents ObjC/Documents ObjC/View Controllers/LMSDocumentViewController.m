//
//  LMSDocumentViewController.m
//  Documents ObjC
//
//  Created by Lisa Sampson on 2/27/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import "LMSDocumentViewController.h"

@interface LMSDocumentViewController ()

@end

@implementation LMSDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    
    self.docTextView.delegate = self;
    
}

- (void)textViewDidChange:(UITextView *)textView {
    self.wordCount.text = [NSString stringWithFormat:@"%d words", [self.docTextView.text wordCount]];
    
}

- (void)updateViews {
    
    if (self.document) {
        self.title = self.document.title;
        self.titleTextField.text = self.document.title;
        self.docTextView.text = self.document.body;
    } else {
        self.title = @"New Document";
    }
    
    self.wordCount.text = [NSString stringWithFormat:@"%d words", [self.docTextView.text wordCount]];
}

- (IBAction)tapSaveDoc:(id)sender {
    
    NSString *title = self.titleTextField.text;
    NSString *body = self.docTextView.text;
    
    if (self.document) {
        [self.documentController updateDoc:self.document withTitle:title andBody:body];
    } else {
        [self.documentController createWithTitle:title andBody:body];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end

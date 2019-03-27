//
//  BHDocumentDetailViewController.m
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import "BHDocumentDetailViewController.h"
#import "NSString+WordCount.h"

@interface BHDocumentDetailViewController ()

@end

@implementation BHDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _documentBodyTextView.delegate = self;
    [self updateViews];
    
}

-(void)updateViews{
    
    NSString *wordCountString = [NSString stringWithFormat:@"%i Words", [_document wordCount]];
    _wordCountLabel.text = wordCountString;
    _documentTitleTextField.text = [_document title];
    _documentBodyTextView.text = [_document bodyText];
    
    [self updateWordCount];
}

-(void)updateWordCount{
    _document.wordCount = [_documentBodyTextView.text wordCount];
    NSString *wordCountString = [NSString stringWithFormat:@"%i Words", [_document wordCount]];
    _wordCountLabel.text = wordCountString;
}

- (IBAction)saveButtonClicked:(id)sender {
    
    _document.title = [_documentTitleTextField text];
    _document.bodyText = [_documentBodyTextView text];
    
    if (_isUpdatingView) {
        [_modelController updateDocument:_document];
    } else {
        [_modelController createDocument:_document];
    }

    
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)textViewDidChange:(UITextView *)textView {
    _document.bodyText = [_documentBodyTextView text];
    [self updateWordCount];
}

@end

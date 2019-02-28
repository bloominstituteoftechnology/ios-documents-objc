//
//  ABCDocumentViewController.m
//  Documents
//
//  Created by Austin Cole on 2/27/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import "ABCDocumentViewController.h"
#import "NSString+WordCount.h"

@interface ABCDocumentViewController ()

- (void)updateViews;

@end

@implementation ABCDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _documentBodyTextView.delegate = self;
    [self updateViews];
    
}

//MARK: UITextViewDelegate
- (void)textViewDidChange:(UITextView *)textView {
    //I am converting the result of the `wordCount` method from the NSString  + WordCount files, which is an NSUInteger, to an NSString so that it can be used in the label
    _wordCountLabel.text = [NSString stringWithFormat: @"%lu", [NSString wordCount:_documentBodyTextView.text]];
}

//MARK: Other Methods
- (void)updateViews {
    _wordCountLabel.text = [NSString stringWithFormat: @"%lu", _document.wordCount];
    _documentBodyTextView.text = _document.body;
    _documentTitleTextField.text = _document.title;
    if (_document == nil) {
        [_documentNavigationItem setTitle: @"New Document"];
    } else {
        [_documentNavigationItem setTitle: _document.title];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveButtonWasTapped:(id)sender {
    if (_document != nil && _documentTitleTextField.text != nil && _documentBodyTextView.text != nil) {
        [_documentController updateDocument:_document withTitle:_documentTitleTextField.text withBody:_documentBodyTextView.text];
    } else if (_documentTitleTextField.text != nil && _documentBodyTextView.text != nil) {
        [_documentController createDocument:_documentTitleTextField.text withBody:_documentBodyTextView.text];
    }
}
@end

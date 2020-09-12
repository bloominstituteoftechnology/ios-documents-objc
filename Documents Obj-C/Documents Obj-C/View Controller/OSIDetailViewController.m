//
//  OSIDetailViewController.m
//  Documents Obj-C
//
//  Created by Sergey Osipyan on 2/28/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

#import "OSIDetailViewController.h"
#import "NSObject+OSIWordCount.h"
#import "OSIDocumentController.h"

@interface OSIDetailViewController ()



@end

@implementation OSIDetailViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    _textBody.delegate = self;
    [self updateViews];
    
}

- (void)bodyTextDidChange:(UITextView *)text {
    
    _createNewDocument.text = [_textBody text];
    [self updateViews];
    
    NSString *wordCountString = [NSString stringWithFormat:@"%lu Words", (unsigned long)[_createNewDocument wordCount]];
    _documentTitle.text = wordCountString;
}


- (void)updateViews {
    _documentTitle.text = [NSString stringWithFormat: @"%lu", _createNewDocument.wordCount];
    _textBody.text = _createNewDocument.text;
    _titleField.text = _createNewDocument.title;
    if (_createNewDocument == nil) {
        [_documentNavigationItem setTitle: @"New Document"];
    } else {
        [_documentNavigationItem setTitle: _createNewDocument.title];
    }
}

- (IBAction)saveButton:(id)sender {
    
    if (_createNewDocument != nil && _titleField.text != nil ) {
        [_osiDocumentController updateDocument:_createNewDocument withTitle:_documentTitle.text bodyText:_textBody.text];
    } else if (_titleField.text != nil) {
        [_osiDocumentController createDocument:_titleField.text withBody:_textBody.text];
        
    }
}
@end

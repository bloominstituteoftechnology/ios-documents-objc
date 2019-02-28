//
//  DRMDocumentDetailViewController.m
//  Documents-Objc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "DRMDocumentDetailViewController.h"

@interface DRMDocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordcountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

- (IBAction)saveDocument:(id)sender;

- (void)updateViews;
- (void)updateWordCountLabel;

@end

@implementation DRMDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateViews];
}

- (void)saveDocument:(id)sender {
    NSString *title = _titleTextField.text;
    NSString *bodyText = _documentTextView.text;
    if ([title isEqualToString: @""] || [bodyText isEqualToString: @""]) { return; }
    if (_document) {
        [self.documentController updateDocument: _document withTitle: title andBodyText: bodyText];
    } else {
        [self.documentController createDocumentWithTitle: title andBodyText: bodyText];
    }
    [self.navigationController popViewControllerAnimated:true];
}

#pragma mark - UI Text View Delegate
- (void)textViewDidChange:(UITextView *)textView {
    [self updateWordCountLabel];
}

- (void)updateViews {
    if (_document) {
        [self setTitle: _document.title];
        [self.titleTextField setText: _document.title];
        [self.documentTextView setText: _document.bodyText];
    } else {
        [self setTitle: @"New Document"];
    }
    [self updateWordCountLabel];
}

- (void)updateWordCountLabel {
    int wordCount = self.documentTextView.text.wordCount;
    [_wordcountLabel setText:[NSString stringWithFormat: @"%d words", wordCount]];
}

@end

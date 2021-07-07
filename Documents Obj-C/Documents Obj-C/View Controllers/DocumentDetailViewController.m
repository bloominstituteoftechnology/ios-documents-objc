//
//  DocumentViewController.m
//  Documents Obj-C
//
//  Created by Ivan Caldwell on 2/28/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import "DocumentDetailViewController.h"
#import "NSString+WordCount.h"

@interface DocumentDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *messageTextView;

@end

@implementation DocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _messageTextView.delegate = self;
    [self updateViews];
}

-(void)updateViews{
    if (_document) {
        self.title = _document.title;
        // Over thought this one for a minute ^^
        _titleTextField.text = [_document title];
        _messageTextView.text = [_document text];
        NSString *wordCountString = [NSString stringWithFormat:@"%i Words", [_document wordCount]];
        _wordCountLabel.text = wordCountString;
    }
    int wordCount = self.messageTextView.text.wordCount;
    _wordCountLabel.text = [NSString stringWithFormat: @"%d words", wordCount];
}


// Implement the textViewDidChange method. This will get called every time the user enters a
// character on the keyboard while the text view is the first responder. In the method, update
// the label's text to show how many words are in the textView's text. Use the wordCount method
// from the NSString+WordCount category to do this.
- (void)textViewDidChange:(UITextView *)textView {
    int wordCount = self.messageTextView.text.wordCount;
    _wordCountLabel.text = [NSString stringWithFormat: @"%d words", wordCount];
}

- (IBAction)saveButtonTapped:(id)sender {
    NSString *title = _titleTextField.text;
    NSString *message = _messageTextView.text;
    if (title.length == 0  || message.length == 0) {
        return;
    } else if (_document) {
        [self.documentController updateDocument:_document title:title text:message];
    } else {
        [self.documentController createDocument:title text:message];
    }
    [self.navigationController popViewControllerAnimated:true];
    
}

@end

//
//  PCYDocumentViewController.m
//  DocumentsObj-C
//
//  Created by Paul Yi on 4/3/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYDocumentViewController.h"
#import "NSString+PCYWordCount.h"
#import "PCYDocumentController.h"
#import "PCYDocument.h"

@interface PCYDocumentViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;


@end

@implementation PCYDocumentViewController

- (void)setDocument:(PCYDocument *)document {
    _document = document;
    [self updateViews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // set the view controller as the delegate of the text view
    self.textView.delegate = self;
    [self updateViews];
}

- (IBAction)save:(id)sender {
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

- (void)textViewDidChange:(UITextView *)textView {
    self.wordCountLabel.text = [NSString stringWithFormat:@"%i", [textView.text wordCount]];
}

-(void)updateViews {
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

//
//  MUDocumentDetailViewController.m
//  Documents
//
//  Created by Moin Uddin on 11/14/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import "MUDocumentDetailViewController.h"
#import "MUDocumentController.h"
#import "NSString+WordCount.h"
@interface MUDocumentDetailViewController ()

@end

@implementation MUDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.documentBodyTextView setDelegate:self];
    [self updateViews];
}

- (void)textViewDidChange:(UITextView *)textView
{
    NSString *body = self.documentBodyTextView.text;
    [self.wordCountLabel setText: [NSString stringWithFormat:@"%d Words", [body wordCount]]];
}

- (void)updateViews
{
    if (self.document) {
        self.title = self.document.title;
        self.documentBodyTextView.text = self.document.body;
        self.documentTitleTextField.text = self.document.title;
        NSString *body = self.documentBodyTextView.text;
        [self.wordCountLabel setText: [NSString stringWithFormat:@"%d Word(s)", [body wordCount]]];
    } else {
        self.title = @"New Document";
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

- (IBAction)saveDocument:(id)sender {
    if (!self.document) {
        [self.documentController createDocumentWithTitle:self.documentTitleTextField.text body:self.documentBodyTextView.text];
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        [self.documentController updateDocumentWithDocument:self.document title:self.documentTitleTextField.text body:self.documentBodyTextView.text];
        [self.navigationController popViewControllerAnimated:YES];
    }
}
@end

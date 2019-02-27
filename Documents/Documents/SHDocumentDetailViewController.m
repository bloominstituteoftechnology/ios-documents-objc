//
//  SHDocumentDetailViewController.m
//  Documents
//
//  Created by Sean Hendrix on 2/27/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import "SHDocumentDetailViewController.h"
#import "SHDocumentController.h"
#import "NSString+WordCount.h"

@interface SHDocumentDetailViewController ()

@end

@implementation SHDocumentDetailViewController

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

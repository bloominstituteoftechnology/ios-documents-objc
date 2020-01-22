//
//  SKSDetailDocumentViewController.m
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSDetailDocumentViewController.h"
#import "SKSDocument.h"
#import "SKSDocumentController.h"
#import "NSString+SKSWordCount.h"

@interface SKSDetailDocumentViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordsLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

- (void)updateViews;
- (void)setupTextViewLayer;
- (void)saveDocument;

@end

@implementation SKSDetailDocumentViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {

    if (self.document) {
        self.title = self.document.title;
        self.titleTextField.text = self.document.title;
        self.documentTextView.text = self.document.documentText;
        self.wordsLabel.text = [NSString stringWithFormat:@"%d Words", self.document.wordCount];
    }

    [self setupTextViewLayer];
    [self.documentTextView setDelegate:self];
}

- (void)setupTextViewLayer {
    [[self.documentTextView layer] setBorderColor:[[UIColor lightGrayColor] CGColor]];
    [[self.documentTextView layer] setBorderWidth:1];
    [[self.documentTextView layer] setCornerRadius:10];
}

- (void)saveDocument {
    NSString *title = self.titleTextField.text;
    NSString *text = self.documentTextView.text;

    if ([title length] == 0 || [text length] == 0 ){
        NSLog(@"Empty title or text");
        return;
    }

    SKSDocument *document = [[SKSDocument alloc] initWithTitle:title text:text];

    if (self.document) {
        [self.documentController updateDocument:self.document with:document];
    } else {
        [self.documentController createDocument:document];
    }

    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)saveButtonTapped:(id)sender {
    [self saveDocument];
}

#pragma mark - Text View Delegate

- (void)textViewDidChange:(UITextView *)textView {
    self.wordsLabel.text = [NSString stringWithFormat:@"%d Words", [self.documentTextView.text sks_wordCount]];
}

@end

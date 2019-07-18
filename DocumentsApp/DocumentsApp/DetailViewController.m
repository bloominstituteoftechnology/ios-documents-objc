//
//  DetailViewController.m
//  DocumentsApp
//
//  Created by Diante Lewis-Jolley on 7/17/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import "DetailViewController.h"
#import "DLJDocument.h"
#import "DLJDocumentController.h"
#import "NSString+WordCount.h"

@interface DetailViewController ()


@end

@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.textView setDelegate:self];
    [self updateViews];
}

-(void)updateViews {

    if(!self.isViewLoaded || !self.document) { return; }

    self.title = self.document.title ?: @"Create New Document";

    self.titleTextField.text = self.document.title;
    self.textView.text = self.document.message;
}

- (void)textViewDidChange:(UITextView *)textView {

    NSString *textViewString = [self.textView text];

    NSInteger newWordCount = [textViewString wordCount];

    // Everytime the words count change, the label will change
    [_wordLabel setText:[NSString stringWithFormat:@"%ld words", newWordCount]];
}



- (IBAction)saveButtonTapped:(id)sender {

    BOOL editedDocument = self.document != nil;


    DLJDocument *newDoc = self.document ?: [[DLJDocument alloc] init];
    newDoc.wordCount = self.document.wordCount;
    newDoc.title = self.titleTextField.text;
    newDoc.message = self.textView.text;

    if (!editedDocument) {
        [self.docController addDocument:newDoc];

    }

    [self.navigationController popViewControllerAnimated:YES];

}


@end

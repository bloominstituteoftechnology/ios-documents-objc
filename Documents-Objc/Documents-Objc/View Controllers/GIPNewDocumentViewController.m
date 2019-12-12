//
//  GIPNewDocumentViewController.m
//  Documents-Objc
//
//  Created by Gi Pyo Kim on 12/11/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPNewDocumentViewController.h"
#import "GIPDocumentController.h"
#import "GIPDocument.h"
#import "NSString+GIPWordCount.h"

@interface GIPNewDocumentViewController ()
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;
- (IBAction)saveButtonPressed:(id)sender;

@end

@implementation GIPNewDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.documentTextView setDelegate:self];
}


- (IBAction)saveButtonPressed:(id)sender {
    NSString *title = self.titleTextField.text;
    NSString *document = self.documentTextView.text;
    
    if (![title isEqual: @""] && ![document isEqual: @""]) {
        GIPDocument *newDoc = [[GIPDocument alloc] initWithTitle:title text:document];
        [self.controller addDocument:newDoc];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)textViewDidChange:(UITextView *)textView {
    int wordCount = [self.documentTextView.text wordCount];
    self.wordCountLabel.text = [NSString stringWithFormat:@"%d words", wordCount];
}

@end

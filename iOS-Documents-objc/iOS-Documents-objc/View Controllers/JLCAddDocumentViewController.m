//
//  JLCAddDocumentViewController.m
//  iOS-Documents-objc
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import "JLCAddDocumentViewController.h"
#import "NSString+JLCWordCount.h"

@interface JLCAddDocumentViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numOfWordsLabel;
@property (weak, nonatomic) IBOutlet UITextField *docTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *docTextView;

@end

@implementation JLCAddDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.docTextView.delegate = self;
    [self updateViews];
}

- (void)updateViews {
    int wordCount = [self.docTextView.text wordCount];
    self.numOfWordsLabel.text = [NSString stringWithFormat:@"%d words", wordCount];
}

- (void)textViewDidChange:(UITextView *)textView {
    [self updateViews];
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    if (![self.docTextView.text  isEqual: @""] && ![self.docTextView.text  isEqual: @""]) {
        [self.documentController createDocumentWithTitle:self.docTitleTextField.text
                                                    text:self.docTextView.text];
    }
    [self.navigationController popToRootViewControllerAnimated:YES];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

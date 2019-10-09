//
//  REPDocumentDetailViewController.m
//  ObjC Documents
//
//  Created by Michael Redig on 10/9/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPDocumentDetailViewController.h"
#import "REPDocument.h"
#import "REPDocumentController.h"
#import "NSString+WordCount.h"

@interface REPDocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation REPDocumentDetailViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
	[self updateViews];
}

- (void)updateViews {
	if (!self.isViewLoaded || !self.document) {
		return;
	}

	self.titleTextField.text = self.document.title;
	self.documentTextView.text = self.document.text;
	[self updateWordCount];
}

- (void)updateWordCount {
	self.wordCountLabel.text = [NSString stringWithFormat:@"%lu words", self.documentTextView.text.wordCount];
}

- (IBAction)saveButtonPressed:(UIBarButtonItem *)sender {
	[self saveDocument];
	[self.navigationController popViewControllerAnimated:YES];
}

- (void)saveDocument {
	NSString* title = self.titleTextField.text;
	NSString* text = self.documentTextView.text;
	if (self.document) {
		[self.documentController updateDocument:self.document withTitle:title andText:text];
	} else {
		[self.documentController createDocumentWithTitle:title andText:text];
	}
}

- (void)textViewDidChange:(UITextView *)textView {
//	NSLog(@"textview now reads: %@", textView.text);
	[self updateWordCount];
}

@end

//
//  HSVNewDocumentViewController.m
//  documents-obj
//
//  Created by Hector Steven on 7/17/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "HSVNewDocumentViewController.h"
#import "../NSString+hsvWordCount.h"
#import "../Model Controller /HSVDocumentController.h"
#import "../Models/HSVDocument.h"

@interface HSVNewDocumentViewController ()

@property (strong, nonatomic) IBOutlet UILabel *countLabel;
@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) IBOutlet UITextView *documentTextView;

@end

@implementation HSVNewDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.documentTextView.delegate = self;
	[self setupViews];
}

- (void) setupViews {
	if (!self.isViewLoaded || !self.document) { return; }
	
	self.title = self.document.title;
	self.titleTextField.text = self.document.title;
	self.documentTextView.text = self.document.body;
	self.countLabel.text = [[NSString alloc] initWithFormat:@"%@ words", self.document.count];
}

- (void)textViewDidChange:(UITextView *)textView {
	self.countLabel.text = [[NSString alloc] initWithFormat:@"%@ words", [textView.text hsv_wordCount] ];
}

- (IBAction)saveBarButton:(id)sender {
	NSString *title = self.titleTextField.text;
	NSString *body = self.documentTextView.text;
	HSVDocument *doc = [[HSVDocument alloc] initWithTitle:title body:body];
	
	if (!_document)
		[self.documentController createDocument:doc];
	else
		[self.documentController updateDocument:doc];
	
	[self.navigationController popViewControllerAnimated:YES];
	
}


@end

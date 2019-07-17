//
//  TXCDocumentDetailViewController.m
//  Documents-Objc
//
//  Created by Thomas Cacciatore on 7/17/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCDocumentDetailViewController.h"
#import "TXCDocument.h"
#import "TXCDocumentController.h"

@interface TXCDocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *textView;





@end

@implementation TXCDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateViews];
}

- (void)setDocument:(TXCDocument *)document {
    if (document != _document) {
        _document = document;
        [self updateViews];
    }
}

- (void)updateViews {
    if (!self.isViewLoaded || !self.document) { return; }
    self.title = self.document.title;
    self.titleTextField.text = self.document.title;
    self.textView.text = self.document.text;
    self.countLabel.text = [NSString stringWithFormat:@"%li", self.document.wordCount];
}


// Actions

- (IBAction)saveButtonPressed:(id)sender {
    BOOL isNewDoc = self.document == nil;
    
    TXCDocument *document = isNewDoc ? [[TXCDocument alloc] init] : self.document;
    
    document.title = self.titleTextField.text;
    document.text = self.textView.text;
    
    if (isNewDoc) {
        [self.documentController addDocument:document];
    }
    [self.navigationController popViewControllerAnimated:YES];
}




@end

//
//  ARDocumentViewController.m
//  Documents
//
//  Created by Alex Rhodes on 11/6/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

#import "ARDocumentViewController.h"

@interface ARDocumentViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordsLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;


@end

@implementation ARDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    NSString *title = self.titleTextField.text;
    NSString *body = self.bodyTextView.text;
    [self.controller createDocumentWithTitle:title body:body];
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void) updateViews {
    
}

- (void) setDocument:(ARDocument *)document {
    if (document != _document) {
        _document = document;
        [self updateViews];
    }
}

@end

//
//  BHDocumentDetailViewController.m
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import "BHDocumentDetailViewController.h"

@interface BHDocumentDetailViewController ()

@end

@implementation BHDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
                            
    NSString *wordCountString = [NSString stringWithFormat:@"%i Words", [_document wordCount]];
    _wordCountLabel.text = wordCountString;
    _documentTitleTextField.text = [_document title];
    _documentBodyTextView.text = [_document bodyText];
}


- (IBAction)saveButtonClicked:(id)sender {
    
    _document.title = [_documentTitleTextField text];
    _document.bodyText = [_documentBodyTextView text];

    [_modelController createDocument:_document];
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
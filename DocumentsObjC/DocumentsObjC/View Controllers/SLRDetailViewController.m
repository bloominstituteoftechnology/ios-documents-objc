//
//  SLRDetailViewController.m
//  DocumentsObjC
//
//  Created by Sameera Roussi on 7/17/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

#import "SLRDetailViewController.h"
#import "SLRDocument.h"
#import "SLRDocumentController.h"
#import "NSString+WordCount.h"

@interface SLRDetailViewController ()

#pragma mark - Outlets
@property (strong, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (strong, nonatomic) IBOutlet UITextField *documentTitleTextField;
@property (strong, nonatomic) IBOutlet UITextView *wordsTextField;

@end

@implementation SLRDetailViewController

#pragma mark - View states
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Update view
    [self updateView];
}

// Initialize the document sent
-(void)setDocument:(SLRDocument *)document {
    if (document != _document) {
        _document = document;
        [self updateView];
    }
}

#pragma mark - Actions
#pragma mark - Functions

-(void) updateView {
    if(!self.isViewLoaded || !self.document) { return; }
    
    // Populate the detail fields
    // The view title
    self.title = self.document.documentName;
    // The document data
    
    self.wordCountLabel.text = [self.document.documentWords slr_wordCount];
    self.documentTitleTextField.text = self.document.documentName;
    self.wordsTextField.text = self.document.documentWords;
}


- (IBAction)detailSaveButtonTapped:(id)sender {
    [self saveDocument:self.document];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void) saveDocument:(SLRDocument *)document {
    BOOL isNewDocument = !document;
    // Create the new task if one was not passed
    if(isNewDocument) {
        document = [[SLRDocument alloc] init];
    }
    [self updateDocumentFromUserInput: document];
    if(isNewDocument) {
        NSLog(@"\nisNewDocument: %@ \n %@", self.document.documentName, self.document.documentWords);
        [self.documentController addDocument:document];
    }
}

- (void)updateDocumentFromUserInput:(SLRDocument *)document {
    document.documentName = self.documentTitleTextField.text;
    document.documentWords = self.wordsTextField.text;
}
@end

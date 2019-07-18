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
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *wordsTextField;

@property (nonatomic) NSString *wordCount;

@end

@implementation SLRDetailViewController

#pragma mark - View states
- (void)viewDidLoad {
    [super viewDidLoad];
    _wordsTextField.delegate = self;
    // Update view
    [self updateView];
}


//-(void)setWordCount:(NSString *)wordCount {
//    NSLog(@"wordCount = %@", wordCount);
//        wordCount = [self.document.documentWords slr_wordCount];
//    [self updateView];
//}


// Initialize the document sent
-(void)setDocument:(SLRDocument *)document {
    if (document != _document) {
        _document = document;
        [self updateView];
    }
}

#pragma mark - Actions
- (IBAction)detailSaveButtonTapped:(id)sender {
    [self saveDocument:self.document];
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Functions

-(void) updateView {
    if(!self.isViewLoaded || !self.document) { return; }
    
    // Populate the detail fields
    // The view title
    self.title = self.document.documentName;
    // The document data
    
    _wordCount = [self.document.documentWords slr_wordCount];
    self.wordCountLabel.text =[self.document.documentWords slr_wordCount];
    self.documentTitleTextField.text = self.document.documentName;
    self.wordsTextField.text = self.document.documentWords;
}

- (void)textViewDidChange:(UITextView *)textView {
    self.wordCountLabel.text =  [self.wordsTextField.text slr_wordCount];
}

-(void) saveDocument:(SLRDocument *)document {
    BOOL isNewDocument = !document;
    // Create the new task if one was not passed
    if(isNewDocument) {
        document = [[SLRDocument alloc] init];
    }
    [self updateDocumentFromUserInput: document];
    if(isNewDocument) {
        [self.documentController addDocument:document];
    }
}

- (void)updateDocumentFromUserInput:(SLRDocument *)document {
    document.documentName = self.documentTitleTextField.text;
    document.documentWords = self.wordsTextField.text;
}
@end

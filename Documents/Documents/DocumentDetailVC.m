//
//  DocumentDetailVC.m
//  Documents
//
//  Created by John Kouris on 2/4/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "DocumentDetailVC.h"
#import "DocumentController.h"
#import "JDKDocument.h"

@interface DocumentDetailVC ()



@property int textViewWordCount;

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentWordsTextView;


@end

@implementation DocumentDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    self.documentWordsTextView.delegate = self;
}

- (void)updateViews
{
    if (self.document != nil) {
        JDKDocument *doc = [self document];
        self.documentTitleTextField.text = doc.title;
        self.documentWordsTextView.text = doc.text;
        self.navigationItem.title = @"Update Document";
    } else {
        self.title = @"New Document";
    }
    
    
    self.documentWordsTextView.layer.borderColor = UIColor.systemGray4Color.CGColor;
    self.documentWordsTextView.layer.cornerRadius = 10;
    self.documentWordsTextView.layer.borderWidth = 1;
}

- (void)textViewDidChange:(UITextView *)textView
{
    
}

- (void)setDocument:(JDKDocument *)document
{
    _document = document;
    [self updateViews];
}

- (IBAction)saveButtonTapped:(id)sender
{
    BOOL isNewDocument = (self.document == nil);
    
    if (isNewDocument) {
        JDKDocument *document = [[JDKDocument alloc] initWithTitle:self.documentTitleTextField.text
                                                              text:self.documentWordsTextView.text];
        [self.documentsController createDocument:document];
    } else {
        self.document.title = self.documentTitleTextField.text;
        self.document.text = self.documentWordsTextView.text;
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end

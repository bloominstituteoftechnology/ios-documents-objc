//
//  DetailViewController.m
//  Documents
//
//  Created by Bobby Keffury on 2/5/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "DetailViewController.h"
#import "DocumentController.h"
#import "Document.h"
#import "NSString+WordCount.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *textTextView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateViews];
}

//Save Tapped
- (IBAction)saveTapped:(UIBarButtonItem *)sender
{
    BOOL isNewDocument = (self.document == nil);
    
    if (isNewDocument) {
        Document *document = [[Document alloc] initWithTitle:self.titleTextField.text
                                                        text:self.textTextView.text];
        [self.documentController addDocument:document];
    } else {
        self.document.title = self.titleTextField.text;
        self.document.text = self.textTextView.text;
        
        [self.documentController updateDocument:self.document];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

//MARK: - Methods

- (void)updateViews
{
    self.title = self.document.title ?: @"Create Document";
    
    if (!self.isViewLoaded || !self.document) { return; }
    
    self.titleTextField.text = self.document.title;
    self.textTextView.text = self.document.text;
}

- (void) setDocument:(Document *)document
{
    if (_document != document) {
        _document = document;
        [self updateViews];
    }
}

@end


//TODO: Implement textViewDelegate and add the textViewDidChange method to update word count.

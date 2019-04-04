//
//  NYCNewDocumentViewController.m
//  Documents
//
//  Created by Nathanael Youngren on 4/3/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCNewDocumentViewController.h"
#import "NSString+NYCWordCount.h"

@interface NYCNewDocumentViewController ()

- (void)checkWordCount;

@property int textViewWordCount;

@end

@implementation NYCNewDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    self.documentTextView.delegate = self;
}

- (void)checkWordCount {
    int wordCount = [[self.documentTextView text] nyc_wordCount];
    NSString *wordWord = [[NSString alloc] init];
    wordWord = wordCount != 1 ? @"words" : @"word";
    NSString *wordCountString = [[NSString alloc] initWithFormat:@"%i %@", wordCount, wordWord];
    [[self wordCountLabel] setText: wordCountString];
    self.textViewWordCount = wordCount;
}

- (void)updateViews {
    if (self.document != nil) {
        NYCDocument *doc = [self document];
        
        [[self documentTitleTextField] setText: [doc title]];
        
        [[self documentTextView] setText: [doc text]];
        
        [self checkWordCount];
        
        [[self navigationItem] setTitle:@"Update Document"];
    } else {
        [[self navigationItem] setTitle:@"New Document"];
        [[self documentTitleTextField] setText:@""];
        [[self documentTextView] setText:@""];
        [[self wordCountLabel] setText:@""];
    }
}

- (void)textViewDidChange:(UITextView *)textView {
    [self checkWordCount];
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    
    NSString *titleText = [[self documentTitleTextField] text];
    NSString *documentTextText = [[self documentTextView] text];
    
    if (self.document != nil) {
        [[self documentController] updateDocument:[self document] withTitle:titleText andText:documentTextText];
    } else {
        NYCDocument *newDoc = [[NYCDocument alloc] initWithTitle:titleText andText:documentTextText];
        [[self documentController] addDocument:newDoc];
    }
    
    [[self navigationController] popToRootViewControllerAnimated:true];
}

- (void)setDocument:(NYCDocument *)document {
    _document = document;
    [self updateViews];
}

@end

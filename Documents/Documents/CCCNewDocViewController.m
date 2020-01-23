//
//  CCCNewDocViewController.m
//  Documents
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
//

#import "CCCNewDocViewController.h"
#import "NSString+CCCDocWordCount.h"

@interface CCCNewDocViewController ()

- (void)checkWordCount;

@property int textViewWordCount;

@end

@implementation CCCNewDocViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    self.documentTextView.delegate = self;
}

- (void)checkWordCount {
    int wordCount = [[self.documentTextView text] ccc_wordCount];
    NSString *wordWord = [[NSString alloc] init];
    wordWord = wordCount != 1 ? @"words" : @"word";
    NSString *wordCountString = [[NSString alloc] initWithFormat:@"%i %@", wordCount, wordWord];
    [[self countLabel] setText: wordCountString];
    self.textViewWordCount = wordCount;
}

- (void)updateViews {
    if (self.document != nil) {
        CCCDocument *doc = [self document];
        
        [[self titleTextField] setText: [doc title]];
        
        [[self documentTextView] setText: [doc text]];
        
        [self checkWordCount];
        
        [[self navigationItem] setTitle:@"Update Document"];
    } else {
        [[self navigationItem] setTitle:@"New Document"];
        [[self titleTextField] setText:@""];
        [[self documentTextView] setText:@""];
        [[self countLabel] setText:@""];
    }
}

- (void)textViewDidChange:(UITextView *)textView {
    [self checkWordCount];
}


- (void)setDocument:(CCCDocument *)document {
    _document = document;
    [self updateViews];
}
- (IBAction)saveButtonPressed:(id)sender {
    NSString *titleText = [[self titleTextField] text];
    NSString *docText = [[self documentTextView] text];
    
    if (self.document != nil) {
        [[self documentController] updateDocument:[self document] withTitle:titleText andText:docText];
    } else {
        CCCDocument *newDoc = [[CCCDocument alloc] initWithTitle:titleText andText:docText];
        [[self documentController] addDocument:newDoc];
    }
    
    [[self navigationController] popToRootViewControllerAnimated:true];
}

@end



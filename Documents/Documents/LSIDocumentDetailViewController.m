//
//  LSIDocumentDetailViewController.m
//  Documents
//
//  Created by Isaac Lyons on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIDocumentDetailViewController.h"
#import "LSIDocument.h"
#import "NSString+LSIWordCount.h"
#import "LSIDocumentController.h"

@interface LSIDocumentDetailViewController ()

@end

@implementation LSIDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.textView setDelegate:self];
    
    if (self.document) {
        [self setTitle:[self.document title]];
        [self.titleTextField setText:[self.document title]];
        
        [self.textView setText:[self.document text]];
    } else {
        [self.textView setText:nil];
    }
    
    [self updateViews];
}

- (void)updateViews {
    [self.wordCountLabel setText:[[NSString alloc] initWithFormat:@"%d words", [[self.textView text] wordCount]]];
}

- (IBAction)save:(UIBarButtonItem *)sender {
    NSString *title = [self.titleTextField text];
    NSString *text = [self.textView text];
    
    if (self.document) {
        [self.controller updateDocument:self.document title:title text:text];
    } else {
        [self.controller addDocumentWithTitle:title text:text];
    }
    
    [self.navigationController popViewControllerAnimated:true];
}

- (void)textViewDidChange:(UITextView *)textView {
    [self updateViews];
}

@end

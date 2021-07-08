//
//  DocumentsDetailViewController.m
//  Documents
//
//  Created by Carolyn Lea on 10/3/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import "DocumentsDetailViewController.h"
#import "NSString+WordCount.h"

@interface DocumentsDetailViewController () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *documentTextView;


@end

@implementation DocumentsDetailViewController


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (_document != nil)
    {
        self.titleTextField.text = self.document.documentTitle;
        self.documentTextView.text = self.document.documentText;
        self.title = @"Edit Document";
    }
    else
    {
        self.titleTextField.text = @"";
        self.documentTextView.text = @"";
        self.title = @"New Document";
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _documentTextView.delegate = self;
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (IBAction)save:(UIBarButtonItem *)sender
{
    if (_document != nil)
    {
        
    }
    else
    {
        NSString *title = self.titleTextField.text;
        NSString *text = self.documentTextView.text;
        
        [_documentController createDocument:title text:text];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)updateCharacterCount
{
    NSUInteger count = [_documentTextView.text wordCount:_documentTextView.text];
    _countLabel.text = [NSString stringWithFormat:@"%lu words", count];
}

-(void)textViewDidChange:(UITextView *)textView
{
    [self updateCharacterCount];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    return YES;
}

@end

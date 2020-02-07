//
//  DocumentDetailViewController.m
//  Documents
//
//  Created by Joel Groomer on 2/4/20.
//  Copyright © 2020 Julltron. All rights reserved.
//

#import "DocumentDetailViewController.h"

@interface DocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblWordCount;
@property (weak, nonatomic) IBOutlet UITextField *txtTitle;
@property (weak, nonatomic) IBOutlet UITextView *txtvBody;

- (IBAction)saveTapped:(id)sender;
- (void)updateViews;

@end

@implementation DocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}


- (IBAction)saveTapped:(id)sender {
    NSString *trimmedTitle = [self.txtTitle.text stringByTrimmingCharactersInSet:([NSCharacterSet whitespaceCharacterSet])];
    if (![trimmedTitle isEqualToString:@""] &&
        ![self.txtvBody.text isEqualToString:@""]) {
        
        if (self.document) {
            // If we started with an existing document, update it
            [self.documentController updateDocument:self.document withTitle:trimmedTitle withBody:self.txtvBody.text];
        } else {
            // Otherwise, add the new document
            Document *doc = [[Document alloc] initWithTitle:trimmedTitle body:self.txtvBody.text];
            [self.documentController addDocument:doc];
        }
        
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)updateViews
{
    if (self.viewLoaded) {
        if (self.document) {
            self.title = self.document.title;
            self.lblWordCount.text = [NSString stringWithFormat:(@"%d words"), self.document.wordCount];
            self.txtTitle.text = self.document.title;
            self.txtvBody.text = self.document.body;
        } else {
            self.title = @"New Document";
            self.lblWordCount.text = @"0 words";
            self.txtTitle.text = @"";
            self.txtvBody.text = @"";
        }
    }
}

#pragma mark - Accessors

- (void)setDocument:(Document *)document {
    _document = document;
    [self updateViews];
}

@end

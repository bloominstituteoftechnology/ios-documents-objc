//
//  KRCDocumentDetailViewController.m
//  Documents
//
//  Created by Christopher Aronson on 7/17/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import "KRCDocumentDetailViewController.h"
#import "KRCDocumentController.h"
#import "NSString+WordCount.h"
#import "KRCDocument.h"
@interface KRCDocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *numberOfWordsLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTileTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

@property (nonatomic) BOOL isNewDocument;

@end

@implementation KRCDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self documentTextView] setDelegate:self];
    
    if ([self document]) {
        
        [self setTitle:[[self document] documentTitle]];
        
        NSString *wordCount = [[NSString alloc] initWithFormat:@"%lu Words",(long unsigned)[[self document] documentWordCount]];
        [_numberOfWordsLabel setText:wordCount];
        
        [[self documentTileTextField] setText:[[self document] documentTitle]];
        [[self documentTextView] setText:[[self document] document]];
        
        [self setIsNewDocument:NO];
    } else {
        
        [self setTitle:@"New Document"];
        [self setIsNewDocument:YES];
    }
    
}

- (void)setDocument:(KRCDocument * _Nonnull)document {
    _document = document;
}

- (void)setDocumentController:(KRCDocumentController * _Nonnull)documentController {
    _documentController = documentController;
}

- (void)setIndexPathForDocument:(NSIndexPath *)indexPathForDocument {
    _indexPathForDocument = indexPathForDocument;
}

- (IBAction)saveButtonTapped:(id)sender {

    if ([self isNewDocument]) {
        
        NSString *documentText = [[self documentTextView] text];
        NSString *documentTitle = [[self documentTileTextField] text];
        
        KRCDocument *newDocument = [[KRCDocument alloc] initWithDocument:documentText titled:documentTitle];
        
        [[self documentController] addDocument:newDocument];
        
        [[self navigationController] popToRootViewControllerAnimated:YES];
    } else {
        
        NSString *documentText = [[self documentTextView] text];
        NSString *documentTitle = [[self documentTileTextField] text];
        
        [[self document] setDocument:documentText];
        [[self document] setDocumentTitle:documentTitle];
        
        [[self documentController] updateDocument:[self document] atIndex:[[self indexPathForDocument] row]];
        
        [[self navigationController] popToRootViewControllerAnimated:YES];
    }
}

- (void)textViewDidChange:(UITextView *)textView {
    
    NSString *wordCount = [[NSString alloc] initWithFormat:@"%lu Words", [[[self documentTextView] text] krc_wordCount]];
    [_numberOfWordsLabel setText:wordCount];
}

@end

//
//  KRCDocumentDetailViewController.m
//  Documents
//
//  Created by Christopher Aronson on 7/17/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import "KRCDocumentDetailViewController.h"
#import "KRCDocumentController.h"
#import "KRCDocument.h"
@interface KRCDocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *numberOfWordsLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTileTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

@end

@implementation KRCDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self document]) {
        [self setTitle:[[self document] documentTitle]];
    } else {
        [self setTitle:@"New Document"];
    }
    
}

- (void)setDocument:(KRCDocument * _Nonnull)document {
    _document = document;
}

- (void)setDocumentController:(KRCDocumentController * _Nonnull)documentController {
    _documentController = documentController;
}

- (IBAction)saveButtonTapped:(id)sender {

}

@end

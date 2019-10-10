//
//  DocDetailViewController.m
//  DocumentsObj-C
//
//  Created by Luqmaan Khan on 10/9/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

#import "DocDetailViewController.h"
#import "Document.h"
#import "DocumentController.h"

@interface DocDetailViewController ()

@property (strong, nonatomic) IBOutlet UILabel *wordCount;
@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) IBOutlet UITextView *docText;

@end

@implementation DocDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)save:(id)sender {
    [self saveDocument];
}

-(void)saveDocument {
    
    BOOL isNewDocument = self.detailDocument == nil;
    Document *document = self.detailDocument ?: [[Document alloc] init];
    document.title = self.titleTextField.text;
    document.text = self.docText.text;
    if (isNewDocument) {
        [self.controller addDocumentWithTitle:self.titleTextField.text andText:self.docText.text];
    }
    [self.navigationController popViewControllerAnimated:YES];
}




@end

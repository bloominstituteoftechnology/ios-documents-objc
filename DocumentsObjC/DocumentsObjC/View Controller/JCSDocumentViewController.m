//
//  JCSDocumentViewController.m
//  DocumentsObjC
//
//  Created by Lambda_School_Loaner_95 on 4/3/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSDocumentViewController.h"
#import "NSString+WordCount.h"
#import "JCSDocument.h"
#import "JCSDocumentController.h"

@interface JCSDocumentViewController ()

@end

@implementation JCSDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _docContentsTextView.delegate = self;
    [self updateViews];
}

- (void)textViewDidChange:(UITextView *)textView {
    int wordyCount = [textView.text jcs_wordCount];
    _wordCountLabel.text = [NSString stringWithFormat:@"%d words",wordyCount];
}

- (void)updateViews {
    NSLog(@"Document in detail view: %@", _document);
    if (_document) {
        self.title = _document.title;
        _docTitleTextField.text = _document.title;
        _docContentsTextView.text = _document.contents;
        _wordCountLabel.text = [NSString stringWithFormat:@"%d words",_document.wordCount];
    } else {
        self.title = @"New Document";
    }
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveTapped:(UIBarButtonItem *)sender {
    NSString *title = _docTitleTextField.text;
    NSString *contents = _docContentsTextView.text;
    
   // NSString * str = @"Hi Hello How Are You ?";
    NSArray * arr = [_wordCountLabel.text componentsSeparatedByString:@" "];
    int wordCount = [arr[0] integerValue];
    NSLog(@"%d", wordCount);
    
    if (_document) {
        [_documentController updateADocument:_document title:title contents:contents wordCount:wordCount];
        [self.navigationController popViewControllerAnimated:true];
    } else {
        JCSDocument *doc = [[JCSDocument alloc] initWithTitle:title contents:contents];
        
       // doc.title = title;
        NSLog(@"Doc title: %@", doc.title);
       // doc.contents = contents;
        doc.wordCount = wordCount;
        [_documentController addNewDocument:doc];
        
        NSLog(@"Documents: %@", _documentController.documents);
        [self.navigationController popViewControllerAnimated:true];
    }
}


@end

//
//  BYDocumentDetailViewController.m
//  Document-objc
//
//  Created by Bradley Yin on 10/9/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYDocumentDetailViewController.h"
#import "BYDocument.h"
#import "BYDocumentController.h"
#import "NSString+WordCount.h"

@interface BYDocumentDetailViewController () <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation BYDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _bodyTextView.delegate = self;
    [self updateViews];
}

- (void)saveTask {
        BOOL isNewTask = self.document == nil;
        
    //    LSITask *task = self.task ? self.task : [[LSITask alloc] init];
        BYDocument *document = self.document ?: [[BYDocument alloc] init];
        
        document.title = self.titleTextField.text;
        document.bodyText = self.bodyTextView.text;
        
        if (isNewTask) {
            [self.documentController createDocument:document];
        }
        
        [self.navigationController popViewControllerAnimated:YES];
}

- (void)updateViews {
    if (!self.isViewLoaded || !self.document) { return; }
    
    self.title = self.document.title;
    self.titleTextField.text = self.document.title;
    self.bodyTextView.text = self.document.bodyText;
}

- (IBAction)saveDocument:(id)sender {
    [self saveTask];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)textViewDidChange:(UITextView *)textView {
    self.wordCountLabel.text = [NSString stringWithFormat:@"Word count: %d", [textView.text wordCount]];
}


@end

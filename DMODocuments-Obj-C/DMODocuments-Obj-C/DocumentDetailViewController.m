//
//  ViewController.m
//  DMODocuments-Obj-C
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 morse. All rights reserved.
//

#import "DocumentDetailViewController.h"
#import "NSString+DMOWordCount.h"
#import "DMODocumentController.h"
#import "DMODocument.h"

@interface DocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *contentTextView;

@end

@implementation DocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    NSString *myString = @"test how many words";
//    NSLog(@"words: %d", [myString dmo_wordCount]);
    self.contentTextView.delegate = self;
    
//    self.document = [[DMODocument alloc] initWithTitle:@"My Document" text:@"Type here"];
    
    [self updateViews];
}

- (void)updateViews {
    if (self.document) {
        self.titleTextField.text = self.document.title;
        self.contentTextView.text = self.document.text;
        int count = self.document.wordCount;
        self.countLabel.text = [NSString stringWithFormat:@"%d Words", count];
    }
}

- (IBAction)saveTapped:(id)sender {
    NSString *title = self.titleTextField.text;
    NSString *text = self.contentTextView.text;
    if (self.document) {
        self.document.title = title;
        self.document.text = text;
        
        [self.documentController updateDocument:self.document];
    } else {
        DMODocument *document = [[DMODocument alloc] initWithTitle:title text:text];
        [self.documentController addDocument:document];
    }

    [self.navigationController popViewControllerAnimated:true];
}

- (void)textViewDidChange:(UITextView *)textView {
    // 
//    NSLog(@"new%@", textView.text);
    self.countLabel.text = [NSString stringWithFormat:@"%d Words",[textView.text dmo_wordCount]];
}


@end

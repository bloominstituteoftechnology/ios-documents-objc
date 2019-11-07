//
//  LSIDetailViewController.m
//  ios-documents-objc
//
//  Created by Lambda_School_Loaner_214 on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "LSIDetailViewController.h"
#import "NSString+LSIWordCount.h"

@interface LSIDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTF;
@property (weak, nonatomic) IBOutlet UITextView *bodyTV;

@end

@implementation LSIDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bodyTV.delegate = self;
    [self updateViews];
    
}
-(void)updateViews {
    if (self.isViewLoaded && self.document != nil) {
        self.title = self.document.title;
        self.wordCountLabel.text = [NSString stringWithFormat:@"%lu Words", [_document.body wordCount]];
        self.titleTF.text = self.document.title;
        self.bodyTV.text = self.document.body;
    }
}

-(void)setDocument:(LSIDocument *)document {
    if (document != _document) {
        _document = document;
        [self updateViews];
    }
}

- (IBAction)saveTapped:(id)sender {
    NSString *title = self.titleTF.text;
    NSString *body = self.bodyTV.text;
    if (self.document == nil){
        [self.controller createDocWithTitle:title body:body];
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        [self.controller updateDoc:self.document title:title body:body];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)textViewDidChange:(UITextView *)textView {
    NSString *wordCountString = [NSString stringWithFormat:@"%lu Words", [textView.text wordCount]];
    self.wordCountLabel.text = wordCountString;
}
@end

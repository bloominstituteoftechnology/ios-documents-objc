//
//  XYZDocumentsViewController.m
//  Documents ObjC
//
//  Created by Iyin Raphael on 2/27/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "XYZDocumentsViewController.h"
#import "XYZDocController.h"
#import "UIKit/UIkit.h"
#import "NSString+WordCount.h"

@interface XYZDocumentsViewController ()

-(void) updateView;

@end

@implementation XYZDocumentsViewController

- (void)viewDidLoad {
   
    [self.detailTextView setDelegate:self];
    [self updateView];

}

- (void)textViewDidChange:(UITextView *)textView {
   NSString *docText= [self.detailTextView text];
    int countText = [docText wordCount];
    _countLabel.text = [NSString stringWithFormat:@"%d words", countText];
}

- (void)updateView{
    _DoctextField.text = [_doc DocTitle];
    self.detailTextView.text = [_doc DocDetails];
    [self.navigationController setTitle:self.doc.DocTitle];
}


- (IBAction)save:(id)sender {
    if (_doc){
        [_docController updateDoc:_doc Doctitle:_DoctextField.text DocDetails: self.detailTextView.text];
    } else {
        [_docController createDoc:_DoctextField.text DocDetails: self.detailTextView.text];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end

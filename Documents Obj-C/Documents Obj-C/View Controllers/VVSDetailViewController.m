//
//  VVSDetailViewController.m
//  Documents Obj-C
//
//  Created by Vici Shaweddy on 2/4/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSDetailViewController.h"

@interface VVSDetailViewController () 

@end

@implementation VVSDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.notesTextView.delegate = self;
    
    if (self.document != nil) {
        self.title = self.document.title;
    } else {
        self.title = @"New Document";
    }
}

- (void)textViewDidChange:(UITextView *)textView
{
    NSString *stringCount = [NSString stringWithFormat:@"%li", [textView.text wordCount]];
    self.titleLabel.text = stringCount;
}
    
- (IBAction)savePressed:(id)sender {
    NSString *title = _titleTextField.text;
    NSString *notes = _notesTextView.text;
    
    if (self.document != nil) {
        [self.documentController updateDocument:[self document] withTitle:title notes:notes];
    } else {
        VVSDocument *newDoc = [[VVSDocument alloc] initWithName:title notes:notes];
        [self.documentController addDocument:newDoc];
    }
    
    [self.navigationController popToRootViewControllerAnimated:YES];
        
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

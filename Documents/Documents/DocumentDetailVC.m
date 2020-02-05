//
//  DocumentDetailVC.m
//  Documents
//
//  Created by John Kouris on 2/4/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "DocumentDetailVC.h"

@interface DocumentDetailVC ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentWordsTextView;


@end

@implementation DocumentDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    
    self.navigationController.navigationBar.prefersLargeTitles = YES;
}

- (void)updateViews
{
    self.title = @"New Document";
    self.documentWordsTextView.layer.borderColor = UIColor.systemGray4Color.CGColor;
    self.documentWordsTextView.layer.cornerRadius = 10;
    self.documentWordsTextView.layer.borderWidth = 1;
}

- (IBAction)saveButtonTapped:(id)sender {
    NSLog(@"test");
}

@end

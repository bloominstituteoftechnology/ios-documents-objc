//
//  JLRDetailViewController.m
//  Documents
//
//  Created by Jesse Ruiz on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "JLRDetailViewController.h"
#import "JLRDocument.h"
#import "JLRDocumentController.h"

@interface JLRDetailViewController ()

// MARK: - Outlets
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleText;
@property (weak, nonatomic) IBOutlet UITextView *documentText;

@property (nonatomic, copy, readonly) JLRDocument *document;
@property (nonatomic, copy, readonly) JLRDocumentController *documentController;

@end

@implementation JLRDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// MARK: - Actions
- (IBAction)saveDocument:(UIBarButtonItem *)sender {
    
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

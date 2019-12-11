//
//  GIPNewDocumentViewController.m
//  Documents-Objc
//
//  Created by Gi Pyo Kim on 12/11/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPNewDocumentViewController.h"

@interface GIPNewDocumentViewController ()
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

@end

@implementation GIPNewDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

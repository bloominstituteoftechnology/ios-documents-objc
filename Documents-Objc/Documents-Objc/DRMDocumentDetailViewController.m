//
//  DRMDocumentDetailViewController.m
//  Documents-Objc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import "DRMDocumentDetailViewController.h"

@interface DRMDocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordcountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

- (IBAction)saveDocument:(id)sender;

@end

@implementation DRMDocumentDetailViewController

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

- (IBAction)saveDocument:(id)sender {
}
@end

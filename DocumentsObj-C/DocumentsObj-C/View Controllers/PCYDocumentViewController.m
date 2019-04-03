//
//  PCYDocumentViewController.m
//  DocumentsObj-C
//
//  Created by Paul Yi on 4/3/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import "PCYDocumentViewController.h"

@interface PCYDocumentViewController ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;


@end

@implementation PCYDocumentViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)save:(id)sender {
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

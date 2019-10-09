//
//  JSManageDocumentVC.m
//  Documents-C
//
//  Created by Jeffrey Santana on 10/9/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import "JSManageDocumentVC.h"

@interface JSManageDocumentVC ()

@property (weak, nonatomic) IBOutlet UILabel *wordCountLbl;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

- (IBAction)saveBtnTapped:(id)sender;

@end

@implementation JSManageDocumentVC

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
}


- (IBAction)saveBtnTapped:(id)sender {
}
@end

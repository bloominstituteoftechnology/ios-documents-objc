//
//  DocumentDetailViewController.m
//  Documents
//
//  Created by Joel Groomer on 2/4/20.
//  Copyright © 2020 Julltron. All rights reserved.
//

#import "DocumentDetailViewController.h"

@interface DocumentDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblWordCount;
@property (weak, nonatomic) IBOutlet UITextField *txtTitle;
@property (weak, nonatomic) IBOutlet UITextView *txtvBody;

- (IBAction)saveTapped:(id)sender;

@end

@implementation DocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)saveTapped:(id)sender {
}

@end

//
//  HSVNewDocumentViewController.m
//  documents-obj
//
//  Created by Hector Steven on 7/17/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "HSVNewDocumentViewController.h"
#import "../NSString+hsvWordCount.h"
#import "../Model Controller /HSVDocumentController.h"
#import "../Models/HSVDocument.h"

@interface HSVNewDocumentViewController ()

@property (strong, nonatomic) IBOutlet UILabel *countLabel;
@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) IBOutlet UITextView *documentTextView;

@end

@implementation HSVNewDocumentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.documentTextView.delegate = self;

}

- (void)textViewDidChange:(UITextView *)textView {
	self.countLabel.text = [[NSString alloc] initWithFormat:@"%@ Words", [textView.text hsv_wordCount] ];
}
- (IBAction)saveBarButton:(id)sender {
	NSLog(@"save and dismiss");
	
}

- (void) setupViews {
	

}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	
	
}


@end

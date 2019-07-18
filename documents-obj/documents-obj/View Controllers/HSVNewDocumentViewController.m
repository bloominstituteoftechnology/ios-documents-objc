//
//  HSVNewDocumentViewController.m
//  documents-obj
//
//  Created by Hector Steven on 7/17/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "HSVNewDocumentViewController.h"
#import "../NSString+hsvWordCount.h"

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

- (void)saveDocument {
	NSLog(@"save");
}

- (void)textViewDidChange:(UITextView *)textView {
	self.countLabel.text = [[NSString alloc] initWithFormat:@"%@ Words", [textView.text hsv_wordCount] ];
}

- (void) setupViews {
	

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

//
//  LSIDocumentDetailViewController.h
//  Documents
//
//  Created by Isaac Lyons on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LSIDocumentController;
@class LSIDocument;

@interface LSIDocumentDetailViewController : UIViewController

@property LSIDocument *document;
@property LSIDocumentController *controller;

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

- (void)updateViews;

@end

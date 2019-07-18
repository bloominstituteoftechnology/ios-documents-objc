//
//  MGBDocumentDetailViewController.h
//  Documents
//
//  Created by Mitchell Budge on 7/17/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGBDocument.h"
#import "MGBDocumentController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MGBDocumentDetailViewController : UIViewController <UITextViewDelegate>

@property MGBDocument *document;
@property MGBDocumentController *documentController;

@property (weak, nonatomic) IBOutlet UILabel *numberOfWordsLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

- (IBAction)saveButtonPressed:(id)sender;

@end

NS_ASSUME_NONNULL_END

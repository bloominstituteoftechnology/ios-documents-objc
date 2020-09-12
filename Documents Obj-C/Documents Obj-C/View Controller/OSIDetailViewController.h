//
//  OSIDetailViewController.h
//  Documents Obj-C
//
//  Created by Sergey Osipyan on 2/28/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//
#import "OSIDocumentController.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OSIDetailViewController : UIViewController <UITextViewDelegate>

@property OSIDocumentController *osiDocumentController;
@property OSIDocument *createNewDocument;
@property (weak, nonatomic) IBOutlet UILabel *documentTitle;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextView *textBody;
@property (weak, nonatomic) IBOutlet UINavigationItem *documentNavigationItem;
- (IBAction)saveButton:(id)sender;

@end

NS_ASSUME_NONNULL_END

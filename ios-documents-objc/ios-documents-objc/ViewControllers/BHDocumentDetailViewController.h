//
//  BHDocumentDetailViewController.h
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BHModelController.h"
#import "BHDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface BHDocumentDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentBodyTextView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@property BHModelController *modelController;
@property BHDocument *document;

- (IBAction)saveButtonClicked:(id)sender;

@end

NS_ASSUME_NONNULL_END

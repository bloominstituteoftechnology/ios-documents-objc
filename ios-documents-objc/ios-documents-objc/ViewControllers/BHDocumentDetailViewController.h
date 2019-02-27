//
//  BHDocumentDetailViewController.h
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BHDocumentDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentBodyTextView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

- (IBAction)saveButtonClicked:(id)sender;

@end

NS_ASSUME_NONNULL_END

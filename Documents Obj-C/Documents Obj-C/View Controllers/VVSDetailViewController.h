//
//  VVSDetailViewController.h
//  Documents Obj-C
//
//  Created by Vici Shaweddy on 2/4/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VVSDocumentController.h"
#import "VVSDocument.h"
#import "NSString+VVSWordCount.h"

@interface VVSDetailViewController : UIViewController <UITextViewDelegate>

@property (nonatomic) VVSDocumentController *documentController;
@property (nonatomic) VVSDocument *document;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *notesTextView;

@end


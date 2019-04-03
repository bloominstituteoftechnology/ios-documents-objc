//
//  JCSDocumentViewController.h
//  DocumentsObjC
//
//  Created by Lambda_School_Loaner_95 on 4/3/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JCSDocument;
@class JCSDocumentController;
NS_ASSUME_NONNULL_BEGIN

@interface JCSDocumentViewController : UIViewController<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;

@property (weak, nonatomic) IBOutlet UITextField *docTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *docContentsTextView;
- (IBAction)saveTapped:(UIBarButtonItem *)sender;

@property JCSDocumentController *documentController;
@property JCSDocument *document;

-(void)updateViews;



@end

NS_ASSUME_NONNULL_END

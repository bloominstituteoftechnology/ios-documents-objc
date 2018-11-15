//
//  MUDocumentDetailViewController.h
//  Documents
//
//  Created by Moin Uddin on 11/14/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MUDocumentController;
@class MUDocument;
NS_ASSUME_NONNULL_BEGIN

@interface MUDocumentDetailViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentBodyTextView;
@property MUDocumentController *documentController;
@property MUDocument *document;


-(void) updateViews;
- (IBAction)saveDocument:(id)sender;

@end

NS_ASSUME_NONNULL_END

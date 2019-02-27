//
//  SHDocumentDetailViewController.h
//  Documents
//
//  Created by Sean Hendrix on 2/27/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SHDocumentController;
@class SHDocument;
NS_ASSUME_NONNULL_BEGIN

@interface SHDocumentDetailViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentBodyTextView;
@property SHDocumentController *documentController;
@property SHDocument *document;


-(void) updateViews;
- (IBAction)saveDocument:(id)sender;

@end

NS_ASSUME_NONNULL_END


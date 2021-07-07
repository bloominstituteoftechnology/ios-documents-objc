//
//  LMSDocumentViewController.h
//  Documents ObjC
//
//  Created by Lisa Sampson on 2/27/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LMSDocument.h"
#import "LMSDocumentController.h"

NS_ASSUME_NONNULL_BEGIN

@interface LMSDocumentViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *wordCount;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *docTextView;

@property (nonatomic) LMSDocument *document;
@property LMSDocumentController *documentController;

- (IBAction)tapSaveDoc:(id)sender;

@end

NS_ASSUME_NONNULL_END

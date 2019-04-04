//
//  NYCNewDocumentViewController.h
//  Documents
//
//  Created by Nathanael Youngren on 4/3/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NYCDocument.h"
#import "NYCDocumentsController.h"

NS_ASSUME_NONNULL_BEGIN

@interface NYCNewDocumentViewController : UIViewController<UITextViewDelegate>

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender;

- (void)updateViews;

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

@property (nonatomic) NYCDocument *document;

@property (nonatomic) NYCDocumentsController *documentController;

@end

NS_ASSUME_NONNULL_END

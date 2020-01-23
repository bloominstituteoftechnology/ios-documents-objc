//
//  CCCNewDocViewController.h
//  Documents
//
//  Created by Jonalynn Masters on 1/22/20.
//  Copyright © 2020 Jonalynn Masters. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCCDocument.h"
#import "CCCDocumentsController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CCCNewDocViewController : UIViewController<UITextViewDelegate>


- (void)updateViews;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;


@property (nonatomic) CCCDocument *document;

@property (nonatomic) CCCDocumentsController *documentController;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButtonPressed;

@end

NS_ASSUME_NONNULL_END

//
//  DetailViewController.h
//  DocumentsApp
//
//  Created by Diante Lewis-Jolley on 7/17/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DLJDocument;
@class DLJDocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *wordLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property DLJDocument *document;
@property DLJDocumentController *docController;

@end

NS_ASSUME_NONNULL_END

//
//  DetailViewController.h
//  

#import <UIKit/UIKit.h>

@class ALWDocument;
@class ALWDocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface ALWDocumentDetailViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *numberOfWordsLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

@property ALWDocument *document;
@property ALWDocumentController *documentController;




@end

NS_ASSUME_NONNULL_END

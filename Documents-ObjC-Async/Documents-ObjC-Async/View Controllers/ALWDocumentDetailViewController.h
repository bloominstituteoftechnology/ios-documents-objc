//
//  DetailViewController.h
//  

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALWDocumentDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *numberOfWordsLabel;

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;

@property (weak, nonatomic) IBOutlet UITextView *documentTextView;


@end

NS_ASSUME_NONNULL_END

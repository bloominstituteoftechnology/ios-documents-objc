//
//  ALWDetailViewController.h
//  

#import <UIKit/UIKit.h>
#import "ALWDocument.h"
#import "ModelController.h"
#import "NSString+WordCount.h"


NS_ASSUME_NONNULL_BEGIN

@interface ALWDetailViewController : UIViewController <UITextViewDelegate>
    
@property ALWDocument *document;
@property ModelController *modelController;
    
@property (weak, nonatomic) IBOutlet UILabel *numberOfWordsLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;
    
- (IBAction)save:(id)sender;

- (void)textViewDidChange:(UITextView *)textView;
    
- (void)updateViews;
    
@end

NS_ASSUME_NONNULL_END

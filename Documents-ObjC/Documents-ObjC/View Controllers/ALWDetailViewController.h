//
//  ALWDetailViewController.h
//  

#import <UIKit/UIKit.h>
#import "ALWDocument.h"
#import "ModelController.h"


NS_ASSUME_NONNULL_BEGIN

@interface ALWDetailViewController : UIViewController
    
@property ALWDocument *document;
    
@property ModelController *modelController;
    
@property (weak, nonatomic) IBOutlet UILabel *numberOfWordsLabel;
    
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
    
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;
    
- (IBAction)save:(id)sender;
    
@end

NS_ASSUME_NONNULL_END

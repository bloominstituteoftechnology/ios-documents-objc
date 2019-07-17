//
//  ALWTableViewController.h
//  

#import <UIKit/UIKit.h>
#import "ModelController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ALWTableViewController : UITableViewController
    
// Reference to modelController - declaring that I will have a model controller, not initializing until I set it
@property ModelController *modelController;

@end

NS_ASSUME_NONNULL_END

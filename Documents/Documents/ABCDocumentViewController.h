//
//  ABCDocumentViewController.h
//  Documents
//
//  Created by Austin Cole on 2/27/19.
//  Copyright © 2019 Austin Cole. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ABCDocumentViewController : UIViewController

//MARK: IBOutlets
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentBodyTextView;
@property (weak, nonatomic) IBOutlet UINavigationItem *documentNavigationItem;

//MARK: IBActions
- (IBAction)saveButtonWasTapped:(id)sender;


@end

NS_ASSUME_NONNULL_END

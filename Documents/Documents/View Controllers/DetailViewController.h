//
//  DetailViewController.h
//  Documents
//
//  Created by Madison Waters on 2/27/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

- (IBAction)saveDocument:(id)sender;

@end

NS_ASSUME_NONNULL_END

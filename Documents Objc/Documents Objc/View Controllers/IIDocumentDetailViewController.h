//
//  IIDocumentDetailViewController.h
//  Documents Objc
//
//  Created by Ilgar Ilyasov on 11/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIDocumentDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *documentTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentBodyTextView;

- (IBAction)saveButtonTapped:(id)sender;

@end

NS_ASSUME_NONNULL_END

//
//  DocumentsDetailViewController.h
//  Documents
//
//  Created by Carolyn Lea on 10/3/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DocumentsDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;

@end

NS_ASSUME_NONNULL_END

//
//  XYZDocumentsViewController.h
//  Documents ObjC
//
//  Created by Iyin Raphael on 2/27/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZDocController.h"
#import "XYZDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface XYZDocumentsViewController : UIViewController <UITextViewDelegate>


- (IBAction)save:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UITextField *DoctextField;

@property (weak, nonatomic) IBOutlet UITextView *detailTextView;


@property (nonatomic) XYZDocController *docController;
@property (nonatomic) XYZDocument *doc;
@end

NS_ASSUME_NONNULL_END

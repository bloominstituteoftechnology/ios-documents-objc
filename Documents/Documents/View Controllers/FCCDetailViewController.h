//
//  ViewController.h
//  Documents
//
//  Created by Lambda_School_Loaner_34 on 4/3/19.
//  Copyright © 2019 Frulwinn. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FCCDocuments;
@class FCCDocumentsController;

@interface FCCDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *notesTextView;
- (IBAction)save:(id)sender;


@end


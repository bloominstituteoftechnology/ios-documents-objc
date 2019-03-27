//
//  BHDocumentTableViewController.h
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BHModelController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BHDocumentTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>


- (IBAction)addNewDocumentButtonClicked:(id)sender;

@end

NS_ASSUME_NONNULL_END
